require 'discordrb'
require 'configatron'
require_relative 'config.rb'

bot = Discordrb::Bot.new token: configatron.token, client_id: 344909710849474562

bot.message(with_text: "Hey Bot!") do |event|
  event.respond "Hi, #{event.user.name}!"
end

bot.run
