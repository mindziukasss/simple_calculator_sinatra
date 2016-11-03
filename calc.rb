require 'sinatra/base'

class Calcapp < Sinatra::Base
	set :static, true

	get '/' do
		'Hello :)'
		erb :index
		
	end

	get '/index' do  
			erb :index
	end

	get '/add' do
		erb :add
	end
	post '/add' do
		@result = params[:first_no].to_f + params[:second_no].to_f
		@first_no = params[:first_no].to_f
		@second_no = params[:second_no].to_f
		erb :add
	end

	get '/sub' do
		erb :sub
	end

	post '/sub' do
		@result = params[:first_no].to_f - params[:second_no].to_f
		@first_no = params[:first_no].to_f
		@second_no = params[:second_no].to_f
		erb :sub
	end

	get '/multi' do
		erb :multi
	end

	post '/multi' do
		@result = params[:first_no].to_f * params[:second_no].to_f
		@first_no = params[:first_no].to_f
		@second_no = params[:second_no].to_f
		erb :multi
		
	end

		get '/div' do
		erb :div
	end

	post '/div' do
		@result = params[:first_no].to_f / params[:second_no].to_f
		@first_no = params[:first_no].to_f
		@second_no = params[:second_no].to_f
		erb :div
		
	end

end


Calcapp.run!