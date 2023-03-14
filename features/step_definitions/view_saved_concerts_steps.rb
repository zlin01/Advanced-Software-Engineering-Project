Given ("I am currently signed in") do
    user = FactoryBot.create(:user)
    sign_in user
end

When ("I visit the saved concerts page") do
    click_link("View Saved Concerts")
end

Then ("I should see a list of my saved concerts") do
    expect(page).to have_content("Your Saved Concerts")
end