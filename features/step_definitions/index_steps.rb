When("I go to the index page") do
    visit root_path
end

Then("I should see a title") do
    expect(page).to have_content("Blissful Engelbartt")
end

And("a description") do
    expect(page).to have_content("The Concert Collector Site")
end

Then("I should not see a 404 error") do
    expect(page).not_to have_content("404 Page not found")
end

