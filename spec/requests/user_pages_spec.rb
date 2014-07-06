require 'rails_helper'

describe "User Pages" do  
  let(:user) {FactoryGirl.create :user}

  describe "Cart" do
    before {sign_in user}

    describe "Sign in without a cart without any items in current cart" do 
      it "" do
        expect(user.cart).not_to be_nil
        expect(user.cart.line_items.count).to eq 0
      end
    end

    describe "Sign in with a cart without any items in current cart" do
      before do
        @cart = FactoryGirl.create :cart, user: user
      end
    end

    describe "Sign in without a cart with items in current cart" do 

    end

    describe "Sign in with a cart with items in current cart" do

    end
  end
end