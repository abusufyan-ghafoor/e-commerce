class CartsController < ApplicationController
	before_action :authenticate_user!

	def index
		@carts = session[:cart]
	end

	def show
	end

	def new
		
	end

	def edit
		
	end
	def create
		order_quantity = params[:cart][:addquantity].to_i
		product_id = params[:cart][:product].to_i
        if session[:cart].select {|cart| cart["product_id"] == product_id}.present?
        	session[:cart].find{|cart| cart["product_id"] == product_id}["quantity"] += order_quantity
			redirect_to carts_path
		else
			ensure_cart_exists << {quantity: order_quantity.to_i, product_id: product_id.to_i}
			redirect_to carts_path
		end	
	end

	def destroy
		product_id = params[:id].to_i
		session[:cart].delete_if {|cart| cart["product_id"] == product_id}
		redirect_to carts_path
	end

end
