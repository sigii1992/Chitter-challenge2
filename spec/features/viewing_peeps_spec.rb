feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    connection = PG.connect(dbname: 'chitter_test')
    connection.exec("INSERT INTO peeps (message) VALUES ('What a sunny day!');")
    connection.exec("INSERT INTO peeps (message) VALUES ('How are you guys??');")
    connection.exec("INSERT INTO peeps (message) VALUES ('I love chocolate..');")

    visit('/peeps')
    expect(page).to have_content "What a sunny day!"
    expect(page).to have_content "How are you guys??"
    expect(page).to have_content "I love chocolate.."
  end
end