class PlacesController < ApplicationController

  def index
   
   @places = places.all
   
    render :template => "places/index"

  end


  def show
    # find a Place
     @place = Places.find_by({ "id" => params["id"] })
     # find entries for the Place
     @entries = Entry.where({ "place_id" => @place["id"] })
     # render companies/show view with details about Company
     
  end

  def new
    # render view with new Company form
  end

  def create
    # start with a new Place
    @place = Places.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]
   
    # save Company row
    @place.save

    # redirect user
    redirect_to "/places"
  end

end
