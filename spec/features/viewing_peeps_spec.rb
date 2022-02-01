feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    user = User.create(email: 'test@example.com', password: 'password123')
    Peep.create(message: "What a sunny day!", user_id: user.id)
    Peep.create(message: "How are you guys??", user_id: user.id)
    Peep.create(message: "I love chocolate..", user_id: user.id)
    visit('/peeps')
    expect(page).to have_content "What a sunny day!"
    expect(page).to have_content "How are you guys??"
    expect(page).to have_content "I love chocolate.."
  end
end