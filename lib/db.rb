require 'sqlite3'


class Db
  def initialize

    time = Time.now
    db = SQLite3::Database.open 'bot.db'
    db.execute "CREATE TABLE IF NOT EXISTS records(weight INT, date TEXT)"
    db.execute "INSERT INTO records (weight, date ) VALUES (?, ?)", 'input', 'time'

  end
end
