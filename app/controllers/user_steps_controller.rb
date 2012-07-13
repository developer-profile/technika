# encoding: utf-8
class UserStepsController < ApplicationController
  
  include Wicked::Wizard
  steps :client, :goods, :sale, :comments, :action
  
  def show
    
   @payment = current_user
   render_wizard
    
  end
  
  def update
    @payment = current_user
    @payment.attributes = params[:payment]
    render_wizard @payment
  end
  
  private

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Спасибо!"
  end
  
  
end
