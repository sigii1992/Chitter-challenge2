require 'peep'

describe Peep do
  it '.all' do
    connection = PG.connect(dbname: 'chitter_test')
    connection.exec("INSERT INTO peeps (message, time) VALUES ('What a sunny day!', '2022-01-27 17:24:37');")
    connection.exec("INSERT INTO peeps (message, time) VALUES ('How are you guys??', '2022-01-26 17:24:37');")
    connection.exec("INSERT INTO peeps (message, time) VALUES ('I love chocolate..', '2022-01-25 17:24:37');")

    peeps = Peep.all

    expect(peeps).to contain_exactly(contain_exactly('2022-01-27 17:24:37', "What a sunny day!"),
     contain_exactly('2022-01-26 17:24:37', "How are you guys??"),
     contain_exactly('2022-01-25 17:24:37', "I love chocolate.."))
  end

  it '.create' do
    Peep.create(message: 'I am still learning!')
    peeps = Peep.all
    expect(peeps).not_to be_empty
  end
end
