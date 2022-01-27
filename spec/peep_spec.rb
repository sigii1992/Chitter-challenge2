require 'peep'

describe Peep do
  it '.all' do
    connection = PG.connect(dbname: 'chitter_test')
    connection.exec("INSERT INTO peeps (message) VALUES ('What a sunny day!');")
    connection.exec("INSERT INTO peeps (message) VALUES ('How are you guys??');")
    connection.exec("INSERT INTO peeps (message) VALUES ('I love chocolate..');")

    peeps = Peep.all

    expect(peeps).to include("What a sunny day!")
    expect(peeps).to include("How are you guys??")
    expect(peeps).to include("I love chocolate..")
  end
end