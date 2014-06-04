# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "Product Title"
    description "Product Description"
    price "9.99"
    quantity_available 1
  end
end
