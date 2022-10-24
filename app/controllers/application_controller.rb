class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Furniture Page
  get "/furnitures" do
    furniture = Furniture.all
    furniture.to_json
  end

  post '/furnitures' do
    new_cart = Cart.create(
      name: params[:name],
      quantity: 1
    )
    new_cart.to_json 
  end

  # Indiviudal Category Page
  get '/furnitures/:id' do
    furniture = Furniture.where(:category_id => params[:id])
    furniture.to_json
  end

  # Shopping Cart
  get '/cart' do
    cart = Cart.all
    cart.to_json
  end
  
  post '/cart' do
    cart = Cart.create(
      name: params[:name],
      quantity: 1,
      furniture_id: params[:furniture_id]
    )
    cart.to_json
  end

  patch '/cart' do
    cart = Cart.find(params[:id])
    cart.update(quantity: params[:quantity])
    cart.to_json
  end

  delete '/cart' do
    cart = Cart.find(params[:id])
    cart.destroy
    cart.to_json
  end
  
end
