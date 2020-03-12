feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end

  feature 'viewing bookmarks' do
    scenario 'bookmarks are visible' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

  
      Bookmark.create(url: "http://www.makersacademy.com" , title: "MakersAcademy")
      Bookmark.create(url: "http://www.destroyallsoftware.com" , title: "DestroySoftware")
      Bookmark.create(url: "http://www.google.com" , title: "Google")
    

      visit '/bookmarks'

      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      expect(page).to have_content 'http://www.google.com'
    end
  end
end