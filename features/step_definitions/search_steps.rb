Given ("I am at the index page") do
    visit root_path
end

When("I put a location in the search box") do
    within("form") do
        fill_in "search", with: "Denver"
    end
end

And ("I click search") do
    click_button ("Search")
end

Then ("I should be taken to the Results page") do
    expect(page).to have_current_path(results_path(search: 'Denver'))
end

When ("I put a location that does not exist in the search bar") do
    visit root_path
    within("form") do
        fill_in "search", with: "abcdefghijk"
    end
end

And ("I click the search button") do
    click_button ("Search")
end

Then ("I should see no events found") do
    expect(page).to have_content("No events found.")
end



