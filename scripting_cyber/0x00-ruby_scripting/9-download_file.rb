#!/usr/bin/env ruby

require "open-uri"
require "uri"
require "fileutils"

if ARGV.length != 2
    puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
else
    download = URI.open(ARGV[0])
    puts "Downloading file from #{ARGV[0]}..."

    content = download.read
    File.write("#{ARGV[1]}", content)
    puts "File downloaded and saved to #{ARGV[1]}."
end
