class OrderDetailsController < ApplicationController
	def index
		@orderdetail = OrderDetail.all
	end
	def new
		
	end
	def create
		session[:cart].each do |cart|
			item_id = cart["quantity"]
			item_qty = cart["product_id"]
		    @orderdetail = OrderDetail.create(quantity: item_qty, product_id: item_id)
	    end
	    if @orderdetail.save
	      render :index
	    end
	end

	def update
		
	end

	def destroy
		
	end


end
