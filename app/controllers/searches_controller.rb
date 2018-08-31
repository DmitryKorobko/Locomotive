class SearchesController < ApplicationController
  def show
    @stations = RailwayStation.all
  end

  def create
    @stations = RailwayStation.all

    redirect_to search_path
  end
end