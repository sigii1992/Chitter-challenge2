require 'peep'

describe Peep do
  it '.all' do
    peeps = Peep.all

    expect(peeps).to include("What a sunny day!")
    expect(peeps).to include("How are you guys??")
    expect(peeps).to include("I love chocolate..")
  end
end