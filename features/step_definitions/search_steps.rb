Given ("I am at the index page") do
    visit root_path
end

When("I put a URL in the search box") do
    within("form") do
        fill_in "search", with: "abcdef.com"
    end
end

And ("I click search") do
    click_button ("Search")
end

Then ("I should be taken to the Results page") do
    expect(page).to have_current_path(results_path(search: 'abcdef.com'))
end

#next scenario not implemented so no step definition

