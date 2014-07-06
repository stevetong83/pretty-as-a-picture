# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  sequence :email_address do |n|
    "someone#{n}@prettyasapicturescarves.com"
  end


  factory :user do
    email {generate :email_address}
    password "password"
  end
end
