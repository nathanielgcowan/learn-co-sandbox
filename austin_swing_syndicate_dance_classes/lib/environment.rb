require_relative "./austin_swing_syndicate_dance_classes/version"
require_relative "./austin_swing_syndicate_dance_classes/cli"
require_relative "./austin_swing_syndicate_dance_classes/party"
require_relative "./austin_swing_syndicate_dance_classes/description"
require_relative "./austin_swing_syndicate_dance_classes/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module AustinSwingSyndicateDanceClasses
  class Error < StandardError; end
  # Your code goes here...
end