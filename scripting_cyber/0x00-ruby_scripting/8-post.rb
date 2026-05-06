#!/usr/bin/env ruby

require "uri"
require "net/http"
require "json"

def post_request(url, body_params)
    uri = URI(url)

    req = Net::HTTP::Post.new(uri)
    req["Content-Type"] = "application/json"
    req.body = body_params.to_json

    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
        http.request(req)
    end

    puts "Response status: #{res.code} #{res.message}"
    puts "Response body:"

    data = JSON.parse(res.body)
    puts JSON.pretty_generate(data)
end
