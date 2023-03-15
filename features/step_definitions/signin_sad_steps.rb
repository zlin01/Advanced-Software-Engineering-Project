And("I am typing in the password input box") do
    find_field("Password").set("AAAAAA")
end

Then("I can see the characters I am entering") do
    expect(find_field("Password", with: "AAAAAA")['type']).to have_no_content "password"
end