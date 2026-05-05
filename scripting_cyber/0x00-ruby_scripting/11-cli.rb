#!/usr/bin/env ruby

require "optparse"

parser = OptionParser.new

parser.on('-a', '--add TASK', 'Add a new task') do |value|
    File.open("tasks.txt", "a") do |f|
        f.puts value
    end
    puts "Task '#{value}' added."
end

parser.on('-l', '--list', 'List all tasks') do |value|
    if File.exist?("tasks.txt")
        File.readlines("tasks.txt").each_with_index do |task, index|
            puts "#{index + 1}. #{task.strip}"
        end
    end
end

parser.on('-r', '--remove INDEX', 'Remove a task by index') do |value|
    if File.exist?("tasks.txt")
        tasks = File.readlines("tasks.txt")
        index = value.to_i - 1
        removed_task = tasks.delete_at(index)
        File.write("tasks.txt", tasks.join)
        puts "Task '#{removed_task.strip}' removed."
    end
end

parser.on('-h', '--help', 'Show help') do |value|
    puts parser
end

ret = parser.parse(ARGV)

