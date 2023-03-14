FactoryBot.define do
  factory :user do
    email {'test@gmail.com'}
    password {'test123'}
    password_confirmation {'test123'}
  end
end

def sign_in(user)
  visit root_path
  click_on "Sign In"
  within("form") do
    fill_in "Email", with: "test@gmail.com"
    fill_in "Password", with: "test123"
  end
  click_button "Log in"
end
