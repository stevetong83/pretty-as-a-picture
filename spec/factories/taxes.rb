# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tax do
    state "MyString"
    tax "9.99"
  end
end
