require 'pg'

class Peep 
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    
    result = connection.exec("SELECT * FROM peeps ORDER BY id DESC")
    result.map { |peep| [peep['time'], peep['message']] }
  end

  def self.create(message:) 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    
    connection.exec("INSERT INTO peeps (message, time) VALUES('#{message}', NOW()::timestamp(0))")
  end
end