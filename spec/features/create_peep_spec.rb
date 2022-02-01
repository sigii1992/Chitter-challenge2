feature 'Add a new peep' do
  scenario 'A user can post a new peep to chitter' do
    visit('peeps/new')
    fill_in('message', with: 'I am still learning!')
    click_button('Post peep!')

    expect(page).to have_content 'I am still learning!'
  end
end