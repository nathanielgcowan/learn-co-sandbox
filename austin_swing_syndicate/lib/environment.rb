require_relative "./austin_swing_syndicate/version"
require_relative "./austin_swing_syndicate/cli"
require_relative "./austin_swing_syndicate/Event"
require_relative "./austin_swing_syndicate/Detail"
require_relative "./austin_swing_syndicate/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module AustinSwingSyndicate
  class Error < StandardError; end
  # Your code goes here...
end