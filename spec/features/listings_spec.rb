feature 'displaying all listings' do
  scenario 'visit display page to see all listings' do
    visit 'listings/new'
    fill_in 'name', with: 'Seagull Cottage'
    fill_in 'description', with: '4 Stars'
    click_button 'Submit'
    visit 'listings/new'
    fill_in 'name', with: 'Shanty Cottage'
    fill_in 'description', with: '0 Stars'
    click_button 'Submit'


    expect(current_path).to eq '/listings'
    expect(page).to have_content 'Seagull Cottage'
    expect(page).to have_content '0 Stars'
  end

  scenario 'after you add a listing click button create new listing' do
    visit '/listings'
    click_button 'Create new listing'
    expect(current_path).to eq '/listings/new'
  end
end
