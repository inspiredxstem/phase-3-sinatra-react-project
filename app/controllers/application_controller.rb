class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Furniture Page
  get "/furnitures" do
    furniture = Furniture.all
    furniture.to_json(:include => [:category, :image])
  end

  # Indiviudal Category Page
  get '/furnitures/:id' do
    furniture = if params[:id] != "null"
      Furniture.where(:category_id => params[:id])
    else 
      Furniture.all
    end

    furniture.to_json(:include => [:category, :image])
  end

  # Shopping Cart
  get '/cart' do
    cart = Cart.all
    cart.to_json
  end

  get '/cart/quantity' do
    cart = Cart.count
    cart.to_json
  end

  get '/cart/info' do
    cart = Cart.get_furnitures
    cart.to_json(:include => [:image])
  end
  
  post '/cart' do
    cart = Cart.create(
      name: params[:name],
      quantity: 1,
      furniture_id: params[:furniture_id]
    )
    cart.to_json
  end

  patch '/cart/:id' do
    cart = Cart.find_by(furniture_id: params[:id])
    cart.update(quantity: params[:quantity])
    cart.to_json
  end

  delete '/cart/:id' do
    cart = Cart.find(params[:id])
    cart.destroy
    cart.to_json
  end
  
end
