require 'pg'

class Peep 
  attr_reader :id, :message, :time, :user_id

  def initialize(id:, message:, time:, user_id:)
    @id = id
    @message = message
    @time = time
    @user_id = user_id
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    
    result = connection.exec("SELECT * FROM peeps INNER JOIN users ON peeps.user_id = users.id ORDER BY peeps.time DESC")
    result.map do |peep| 
      Peep.new(id: peep['id'], message: peep['message'], time: peep['time'], user_id: peep['email'])
    end
  end

  def self.create(message:, user_id:) 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    
    result = connection.exec("INSERT INTO peeps (message, time, user_id) VALUES('#{message}', NOW()::timestamp(0), '#{user_id}') RETURNING id, message, time, user_id")
    Peep.new(id: result[0]['id'], message: result[0]['message'], time: result[0]['time'], user_id: result[0]['user_id'])
  end
end