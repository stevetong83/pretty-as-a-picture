# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    address2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
    type ""
  end
end
