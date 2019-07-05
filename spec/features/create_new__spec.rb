feature 'Add a new listing' do
   scenario 'Should store a listing when adding a new listing' do
    visit 'listings/new'
    fill_in 'name', with: 'The College of Arms'
    fill_in 'description', with: 'Founded in 1484, the current building dates from the Georgian period and the huge windows offer tantalising glimpses into the ancient and secretive art of the heralds. They’re the people who design and protect coats of arms.'
    click_button 'Submit'
    expect(page).to have_content('The College of Arms')
    expect(page).to have_content('Founded in 1484, the current building dates from the Georgian period and the huge windows offer tantalising glimpses into the ancient and secretive art of the heralds. They’re the people who design and protect coats of arms.')
   end
end
