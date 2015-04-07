class UsersController < ApplicationController
  before_filter :cors_access_control_headers

  def index
    @users = User.all
    render :json => @users
  end

  def show
    user = User.find(params[:id])
    @favorites = Favorite.where(user_id: user.id)
    favorites_array = []
    @favorites.each {|item| favorites_array.push(Fruit.find(item.fruit_id))}

    render :json => {first_name:user.first_name, location:user.location, favorites:favorites_array}.to_json
  end

  def cors_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:8080'
  end
end
