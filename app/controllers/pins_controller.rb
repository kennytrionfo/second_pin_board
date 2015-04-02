class PinsController < ApplicationController
	before_action :find_pin, only: [:show, :edit, :update, :destroy]

	def index
		
	end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new(pin_params)
	end

	def show
		
	end




	private

	def pin_params
		params.require(:pin).permit(:title, :description)
	end

	def find_pin
		@pin = Pin.find(params[:id])
	end
end
