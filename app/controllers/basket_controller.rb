class BasketController < ApplicationController
	before_action :authenticate_user!, except: [:index]
  def index
  	if session[:basket] then 
  		@basket = session[:basket]
  	else 
  		@basket = {} 
  	end 
  end

  def add
  	id = params[:id]
  	
  	if session[:basket] then 
  		basket = session[:basket]
  	else
  	session[:basket] = {}
  	basket = session[:basket]
  	end 
  	
  	if basket[id] then 
  	   basket[id] = cart[id] +1 
  	else 
  	redirect_to :action => :index  
  	end 
  end 


  def empty
  	session[:basket]= nil 
  	redirect_to :action => :index  
  end 

end
