class WebhooksController < ApplicationController

   protect_from_forgery :except => :create
  
  #POST
  def create
	 	body = params.except(:action, :controller)
		#parsed_body = body.to_json
		puts body.class
		puts body.inspect

    puts "HERE IS THE EVENT TYPE"

    puts params[:json]
    puts params[:json][0]

		#puts "under here"
		#puts body.to_json
		#puts "TESTIN"
		#puts body.to_json.first
		#puts "PARAMS UNDER HERE"
		#puts params.to_json
    render :nothing => true
    head :ok			
	end
 

end
