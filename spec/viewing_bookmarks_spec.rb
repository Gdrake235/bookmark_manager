feature 'viewing_bookmarks' do
feature 'viewing index' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
feature 'viewing bookmarks' do
  scenario 'displays bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
end