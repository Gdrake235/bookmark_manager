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
    expect(page).to have_content "https://www.google.co.uk/"
    expect(page).to have_content "https://haveibeenpwned.com/"
    expect(page).to have_content "https://makers.tech/"
  end
end
end