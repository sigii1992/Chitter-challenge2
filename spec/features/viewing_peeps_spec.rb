feature 'Viewing peeps' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Welcome to Chitter!'
  end

  scenario 'A user can see peeps' do
    visit('/peeps')
    expect(page).to have_content "What a sunny day!"
    expect(page).to have_content "How are you guys??"
    expect(page).to have_content "I love chocolate.."
  end
end