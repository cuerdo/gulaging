#!/usr/bin/env ruby
#   Copyright (C) 2018 odradek odradek@rlab.be

#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as
#   published by the Free Software Foundation, either version 3 of the
#   License, or (at your option) any later version.

#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.

#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>
require 'telegram_bot'
require 'pry'

token = '588085691:AAFWuP7UGbKSaouSkae-kZxamuVBZTO8qyg'


bot = TelegramBot.new(token: token)
bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
    command = message.get_command_for(bot)
  message.reply do |reply|
    case command
    when /start/i
	    reply.text = "Hello, #{message.from.first_name}!, Today is #{message.date.year}-#{message.date.month}-#{message.date.day} Is that correct?"
    else
      reply.text = "#{message.from.first_name}, have no idea what #{command.inspect} means."
    end
      puts "sending #{reply.text.inspect} to @#{message.from.username}"
      reply.send_with(bot)
    case command
      when /yes/i
	      puts #{message.date}.slice!(0..9)
      when /no/i
	       reply.text = "Oh, whats date is then?"
    else
      reply.text = "#{message.from.first_name}, have no idea what #{command.inspect} means."
    end
      puts "sending #{reply.text.inspect} to @#{message.from.username}"
      reply.send_with(bot)
  end
end
