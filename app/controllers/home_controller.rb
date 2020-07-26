class HomeController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.joins(:cine).all
  end
end
