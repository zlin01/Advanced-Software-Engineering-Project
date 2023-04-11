When ("I search for a concert and save it") do
    user = FactoryBot.create(:user)
    sign_in user

    visit root_path

    within("searchform") do
        fill_in "search", with: "Denver"
    end

    click_button ("Search")

    first('button').click
end

And ("I go to the saved concerts page") do
    visit concertlist_path
end

And ("I click the unsave concert button on a concert") do
    click_button("Unsave concert")
end

Then ("the concert should not be on the page") do
    expect(page).not_to have_content("Denver") 
end
