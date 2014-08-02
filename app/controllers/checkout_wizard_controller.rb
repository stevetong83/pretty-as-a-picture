class CheckoutWizardController < ApplicationController
  include Wicked::Wizard

  steps :authenticate, :shipping_information, :billing_information, :payment_information, :review, :finish

  def show
    case step
    when :authenticate
    when :shipping_information
      @order = Order.new
    when :billing_information
    when :payment_information
    when :review
    when :finish
    end
    render_wizard
  end

  def update

  end
end
