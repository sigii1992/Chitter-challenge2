require 'peep'

  describe Peep do
    describe '.all' do
      peeps = Peep.all

      expect(bookmarks).to include("What a sunny day!")
      expect(bookmarks).to include("How are you guys??")
      expect(bookmarks).to include("I love chocolate..")
    end
end