#!/usr/bin/env ruby

require "uri"
require "net/http"
require "json"

def post_request(url, body_params)
    uri = URI(url)
    res = Net::HTTP.post_form(uri, body_params)

    puts "Response status: #{res.code} #{res.message}"
    puts "Response body:"

    data = JSON.parse(res.body)
    puts JSON.pretty_generate(data)
end
