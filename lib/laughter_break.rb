# frozen_string_literal: true

require_relative "./laughter_break/joke"
require_relative "./laughter_break/api"
require_relative "./laughter_break/cli"
require_relative "./laughter_break/version"

require "pry"
require "httparty"


module LaughterBreak
  class Error < StandardError; end
  # Your code goes here...
end