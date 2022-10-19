class SearchesController < ApplicationController
  def search
    @range = params[:range]
    if @range == "User"
      @users = User.lookingFor(params[:search], params[:word])
    else
      @books = Book.lookingFor(params[:search], params[:word])
    end
  end
end
