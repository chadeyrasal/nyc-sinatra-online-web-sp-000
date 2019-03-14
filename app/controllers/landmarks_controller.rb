class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  get "/landmarks/new" do
    erb :"landmarks/new"
  end

  post "/landmarks" do
    @landmark = Landmark.create(:name => params[:landmark][:name])
  end

  get "/landmarks/:id" do
    @landmark = Landmark.find(params[:id])
    erb :"landmars/show"
  end

end
