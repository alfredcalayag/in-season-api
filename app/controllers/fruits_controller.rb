class FruitsController < ApplicationController
  before_filter :cors_access_control_headers

  def index
    @fruits = Fruit.all
    render :json => @fruits
  end

  def show
    fruit = Fruit.find(params[:id])
    render :json => fruit
  end

  def cors_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:8080'
  end

end
