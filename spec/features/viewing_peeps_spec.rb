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
end