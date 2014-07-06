require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:cart) {FactoryGirl.create :cart}
  let(:product) {FactoryGirl.create :product}

  describe :add_product do

    context "when adding new item to cart" do 
      it "should create a new line item" do 
        cart.add_product(product.id, "1").save
        expect(LineItem.count).to eq 1
        expect(LineItem.first.quantity).to eq 1 
      end
    end

    context "When adding item that is currently in the cart" do
      before {@line_item = FactoryGirl.create :line_item, cart: cart, product: product}

      it "should update the existing line item quantity" do
        cart.add_product(product.id, "1").save
        expect(LineItem.count).to eq 1
        expect(@line_item.reload.quantity).to eq 2
      end
    end
  end
end
