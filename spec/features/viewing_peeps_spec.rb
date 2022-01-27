feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    Peep.create(message: "What a sunny day!")
    Peep.create(message: "How are you guys??")
    Peep.create(message: "I love chocolate..")
    visit('/peeps')
    expect(page).to have_content "What a sunny day!"
    expect(page).to have_content "How are you guys??"
    expect(page).to have_content "I love chocolate.."
  end

  scenario 'user can click button to go back to the index page' do
    visit('/peeps')
    expect(page).to have_button('Go back!')
  end

  scenario 'user can click button to create a new peep' do
    visit('/peeps')
    expect(page).to have_button('Create peep')
  end
end