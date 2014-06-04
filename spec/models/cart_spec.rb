require 'rails_helper'

RSpec.describe Cart, :type => :model do
  let(:cart) {FactoryGirl.create :cart}
  let(:product) {FactoryGirl.create :product}

  describe :add_product do
    context "When line item does not exist" do 
      it "should create a line item" do 
        cart.add_product()
        LineItem.count.should eq 1
      end

    end

    context "When line item already exists" do
      before {FactoryGirl.create :line_item, cart: cart, product: product}

      it "should update the line item quantity" do
        cart.add_product()
        LineItem.count.should eq 1
      end
    end
  end
end
