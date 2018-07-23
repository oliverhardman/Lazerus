class ChargesController < ApplicationController
    def create
      # Amount in cents
      @amount = (@cart.total_price)*100
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => (@cart.total_price)*100,
        :description => 'Please complete the form below',
        :currency    => 'AUD'
      )

  
      
      MailerModelMailer.transactional_email(customer.email).deliver
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
    end
end
