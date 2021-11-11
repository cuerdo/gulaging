require 'telegram/bot'
require_relative 'motivate.rb'


class Bot
  def initialize
    token = '588085691:AAFWuP7UGbKSaouSkae-kZxamuVBZTO8qyg'

  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'

        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} ,  Use  /start to start the bot,  /stop to end the bot")

      when '/stop'

        bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)

     when '/gulag'
        
        bot.api.send_message(chat_id: message.chat.id, text: "Hurra! ready for work? Are you helthy? Whats your weight today?")

      else
       
        bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop")

      end
    end
  end
  end
end
