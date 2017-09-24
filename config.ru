require 'dotenv/load'
require 'byebug'
require_relative 'lib/botrb'

bot = Botrb::Bot.new

run bot.server
