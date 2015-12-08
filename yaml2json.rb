#!/usr/bin/env ruby
require 'json'
require 'yaml'
require 'mechanize'

fontAwesomeIconsURI = 'https://raw.githubusercontent.com/FortAwesome/Font-Awesome/4.5.0-wip/src/icons.yml'

agent = Mechanize.new
file = agent.get(fontAwesomeIconsURI)
data = YAML::load(file.body)
json = JSON.dump(data)

puts json
