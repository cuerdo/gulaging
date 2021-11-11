require 'sqlite3'


class Db
  def initialize

    db = SQLite3::Database.open 'bot.db'
    db.execute "CREATE TABLE IF NOT EXISTS records(weight INT, date DATE)"

  end
end
