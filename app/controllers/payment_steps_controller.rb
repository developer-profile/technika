# encoding: utf-8
class PaymentStepsController < ApplicationController


  include Wicked::Wizard
  steps :client, :goods, :sale, :comments, :action
  
  def show
    
   @payment = current_payment
   render_wizard
    
  end
  
  def update
    @payment = current_payment
    @payment.attributes = params[:payment]
    render_wizard @payment
  end
  
  private

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Спасибо!"
  end
end
