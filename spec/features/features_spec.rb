feature 'Hello Seagull!' do
  scenario "when visiting index should print Hello Seagull!" do
    visit('/')
    expect(page).to have_content "Welcome to Seagull BnB"
  end

  scenario "visit index page" do
    visit('/')
    find_link('Display').visible?
    expect(page).to have_content('Display')
  end

end
