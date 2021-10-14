class OrdersController < ApplicationController
	before_action :authenticate_user!

	def index
		@order = Order.all
	end

	def new
		
	end
	def create
		item = params[:item]
		bill = params[:bill]
		@order = Order.create(item: item, bill: bill)
		@order.user = current_user
		render :index
	end

	def show
		
	end
end
