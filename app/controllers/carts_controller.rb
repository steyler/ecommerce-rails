class CartsController < ApplicationController
  before_action :authenticate_user! 

  def update
    product = params[:carts][:product_id].to_i
    quantity = params[:carts][:quantity].to_i

    current_order.add_product(product, quantity)

    respond_to do |format|
      format.html {redirect_to root_url, notice:"Product added successfully"}
      format.js
    end
  end

  def show
    @order = current_order

  end
end
