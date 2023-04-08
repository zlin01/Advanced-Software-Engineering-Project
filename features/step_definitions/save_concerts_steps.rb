When ("I search for concerts") do
    visit root_path

    within("form") do
        fill_in "search", with: "Denver"
    end

    click_button ("Search")
end

Then ("I should not see a save concert button") do
    expect(page).to have_no_button('Save Concert')
end


Given ("I currently am signed in") do
    user = FactoryBot.create(:user)
    sign_in user
end

When ("I search for a concert") do
    visit root_path

    within("searchform") do
        fill_in "search", with: "Denver"
    end

    click_button ("Search")
end

And ("I click the save concert button") do
    first('button').click
end

And ("I go to my saved concerts page") do
    visit concertlist_path
end

Then ("I should see that concert") do
    expect(page).to have_content("Denver")
end