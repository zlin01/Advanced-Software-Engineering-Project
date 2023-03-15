When("I am on the sign in page") do
    visit new_user_session_path
end

Then ('I should see "Sign In"') do
    expect(page).to have_content "Sign In"
end

Then ('I should see "Email"') do
    expect(page).to have_content "Email"
end

Then ('I should see "Password"') do
    expect(page).to have_content "Password"
end

And ('I should see an input box for the email') do
    expect(page).to have_field("Email")
end

And ('I should see an input box for the password') do
    expect(page).to have_field("Password")
end