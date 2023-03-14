Given("a user is on the home page") do
    visit root_path
end

When ("the user clicks on the about button") do
    click_link("About")
end

Then ("the user should be taken to the about page") do
    expect(page).to have_current_path(about_path)
end


#sign in
Given ("I am on the home page") do
    visit root_path
end

When ("I decide to click on the sign-in button") do
    click_link("Sign In")
end

Then ("I should be taken to the sign-in page") do
    expect(page).to have_current_path(user_session_path)
end
