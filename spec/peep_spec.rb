require 'peep'
require 'database_helpers'

describe Peep do
  describe '.all' do
    it 'returns a list of peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      peep = Peep.create(message: 'What a sunny day!')
      Peep.create(message: "I love chocolate..")
      peeps = Peep.all
  
      expect(peeps.length).to eq 2
      expect(peeps.first).to be_a Peep
      expect(peeps.first.message).to eq "I love chocolate.."
    end
  end
  
  it '.create' do
    peep = Peep.create(message: 'I am still learning!')
    persisted_data = persisted_data(table: 'peeps', id: peep.id)

    expect(peep).to be_a Peep
    expect(peep.id).to eq persisted_data['id']
    expect(peep.message).to eq 'I am still learning!'
  end
end
