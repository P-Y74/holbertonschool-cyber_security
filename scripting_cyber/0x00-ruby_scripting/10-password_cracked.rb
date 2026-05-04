#!/usr/bin/env ruby

require "digest"

hashed_password = ARGV[0]
dictionary_file = ARGV[1]

if ARGV.length != 2
    puts "Usage: 10-password_cracked.rb HASHED_PASSWORD DICTIONARY_FILE"
else
    found = false
    words = File.readlines(dictionary_file)
    words.each do |word|
        word = word.strip
        hash = Digest::SHA256.hexdigest(word)
        if hash == hashed_password
            puts "Password found: #{word}"
            found = true
            break
        end
    end
    if found == false
        puts "Password not found in dictionary."
    end
end
