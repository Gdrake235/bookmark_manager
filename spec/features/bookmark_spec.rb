require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://makers.tech/")
      expect(bookmarks).to include("https://haveibeenpwned.com/")
      expect(bookmarks).to include("https://www.google.co.uk/")
    end
  end
end