class DonationsController < ApplicationController
  def new
    # @car = Automobile.find(params[:automobile_id])
  end
  def create
    # binding.pry
    # car = Automobile.find(params[:automobile_id])
    customer = Stripe::Customer.create(
      email: current_user.email,
      source: get_token(params),
      description: [current_user.firstname, current_user.lastname].join(' ')
    )
  #   charge = Stripe::Charge.create(
  #     customer: customer.id,
  #     amount: car.price * 100,
  #     currency: 'sek',
  #     description: 'Car rental from  CARdnd'
  #   )
  #   if charge[:paid]
  #     redirect_to root_path, notice: "You just rented an AUDI!"
  #   else
  #     redirect_to root_path, notice: "Charge declined"
  #   end
  end
  # private
  # def get_token(params)
  #   Rails.env.test? ? generate_test_token : params['stripeToken']
  # end
  # def generate_test_token
  #   StripeMock.create_test_helper.generate_card_token
  # end

end
