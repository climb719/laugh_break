# frozen_string_literal: true

require_relative "./laugh_break/version"
require_relative "./laugh_break/cli"
require_relative "./laugh_break/joke"
require_relative "./laugh_break/api"

require "pry"
require "httparty"


module LaughBreak
  class Error < StandardError; end
  # Your code goes here...
end
