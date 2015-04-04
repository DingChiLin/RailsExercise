class ArticlesController < ApplicationController
  def new
  end

  def create
    render plain: params[:article].to_json
  end
end
