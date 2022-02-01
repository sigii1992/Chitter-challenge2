require 'peep'
require 'database_helpers'

describe Peep do
  describe '.all' do
    it 'returns a list of peeps' do
      connection = PG.connect(dbname: 'chitter_test')
      user = User.create(email: 'test@example.com', password: 'password123')
      peep = Peep.create(message: 'What a sunny day!', user_id: user.id)
      Peep.create(message: "I love chocolate..", user_id: user.id)
      peeps = Peep.all
  
      expect(peeps.length).to eq 2
      expect(peeps.first).to be_a Peep
      expect(peeps.first.message).to eq 'What a sunny day!'
    end
  end
  
  it '.create' do
    user = User.create(email: 'test@example.com', password: 'password123')
    peep = Peep.create(message: 'I am still learning!', user_id: user.id)
    persisted_data = persisted_data(table: 'peeps', id: peep.id)

    expect(peep).to be_a Peep
    expect(peep.id).to eq persisted_data['id']
    expect(peep.message).to eq 'I am still learning!'
  end
end
