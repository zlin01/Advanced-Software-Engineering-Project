Given ("I am not on the home page") do
    visit results_path
end

When ("I click on Home in the navbar") do
    click_link("Home")
end

Then ("it should navigate me to the home page") do
    expect(page).to have_current_path(root_path)
end


Given ("I am not signed in") do
    visit root_path
end

When ("I click on Sign In in the navbar") do
    click_link("Sign In")
end

Then ("it should navigate me to the sign in page") do
    expect(page).to have_current_path(user_session_path)
end


Given ("I am signed in") do
    user = FactoryBot.create(:user)
    sign_in user
end

When ("I click on View Saved Concerts in the navbar") do
    click_link("View Saved Concerts")
end

Then ("it should navigate me to the saved concerts page") do
    expect(page).to have_current_path(concertlist_path)
end