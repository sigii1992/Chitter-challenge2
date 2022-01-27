feature 'Viewing home page' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Welcome to Chitter!'
  end

  scenario 'user can click button to view peeps' do
    visit('/')
    expect(page).to have_button('View peeps')
  end
end
