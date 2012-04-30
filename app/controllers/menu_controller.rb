class MenuController < ApplicationController
  
  def index
    @item = Menu.all
  end
  
  def new
  end
  
  def create 
    new_item = Menu.new(:name => params["name"], :price => params["price"])
    new_item.save
    
    redirect_to "http://localhost:3000/items"
  end
  
  def show
    @item = Menu.find_by_id(params["id"])
  end
  
  def delete
    @item = Menu.find_by_id(params["id"])
    @item.destroy
    
    redirect_to "http://localhost:3000/items"
  end
  
  def edit
    @item = Menu.find_by_id(params["id"])
  end
  
  def update
    @item = Menu.find_by_id(params["id"])
    @item.name = params["name"]
    @item.price = params["price"]
    @item.save
    
    redirect_to "http://localhost:3000/items"
  end
end