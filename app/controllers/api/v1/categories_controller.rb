class Api::V1::CategoriesController < ApplicationController
  respond_to :json

  def show
    category = params[:category] ? params[:category] : "sports"
    @category = Category.where(:cat_title => category.capitalize).first

    render :json => @category, serializer: CategorySerializer, :root => 'category'
  end
end
