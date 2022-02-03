feature 'Add a new peep' do
  scenario 'A user can post a new peep to chitter' do
    User.create(email: 'test@example.com', password: 'password123')
    visit('/sessions/new')
    fill_in('email', with: 'test@example.com')
    fill_in('password', with: 'password123')
    click_button('Log in')
    visit('peeps/new')
    fill_in('message', with: 'I am still learning!')
    click_button('Post peep!')
    visit('/peeps')

    expect(page).to have_content 'I am still learning!'
  end
end