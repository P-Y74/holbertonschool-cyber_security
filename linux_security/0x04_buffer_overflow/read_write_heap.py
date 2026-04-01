#!/usr/bin/python3

"""Read and write a target string in the heap of a running process.

This script locates the heap of a process using /proc/<pid>/maps,
reads its content from /proc/<pid>/mem, searches for a target ASCII
string, and replaces it in memory.

Usage:
    read_write_heap.py pid search_string replace_string
"""


import sys


def print_usage_and_exit():
    """Print the script usage message and exit with status code 1."""
    print(f"Usage: {sys.argv[0]} pid search_string replace_string.")
    sys.exit(1)


if len(sys.argv) != 4:
    print_usage_and_exit()

try:
    pid = int(sys.argv[1])
except ValueError:
    print("Error: invalid PID")
    sys.exit(1)

if pid <= 0:
    print_usage_and_exit()

search_string = sys.argv[2]
if search_string == "":
    print_usage_and_exit()

replace_string = sys.argv[3]
if replace_string == "":
    print_usage_and_exit()

find_line = None

with open(f"/proc/{pid}/maps", "r") as maps_file:
    for line in maps_file:
        if "[heap]" in line:
            find_line = line
            break

if find_line is None:
    print(f"Error: could not locate heap in /proc/{pid}/maps")
    sys.exit(1)

heap_parts = find_line.split()
start_end = heap_parts[0].split('-', 1)

start = int(start_end[0], 16)
end = int(start_end[1], 16)
heap_size = end - start

with open(f"/proc/{pid}/mem", "rb") as mem_file:
    mem_file.seek(start)
    heap_data = mem_file.read(heap_size)
    search_bytes = bytes(search_string, "utf-8")
    index = heap_data.find(search_bytes)

real_address = start + index

replace_bytes = bytes(replace_string, "utf-8")

if len(replace_bytes) == len(search_bytes):
    with open(f"/proc/{pid}/mem", "r+b") as write_in_file:
        write_in_file.seek(real_address)
        write_in_file.write(replace_bytes)

elif len(replace_bytes) < len(search_bytes):
    with open(f"/proc/{pid}/mem", "r+b") as write_in_file:
        write_in_file.seek(real_address)
        write_in_file.write(replace_bytes + b"\x00")

else:
    print(f"Error: replacement string must not be longer than search string")
    sys.exit(1)
