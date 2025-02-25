class EntriesController < ApplicationController

  def index

    def show
      @entry = Entries.find_by({"id" => params["id"]})
      @place = Places.find_by({"id" => @entry["place_id"]})
      # render entry/show view with details about Entry
    end
  
    def new
      @place = Places.find_by({ "id" => params["place_id"] })
      # render entry/new view with new entry form
    end
  
    def create
      # start with a new entry
      @entry = Entries.new
  
      # assign user-entered form data to Contact's columns
      @entry["title"] = params["title"]
      @entry["description"] = params["description"]
      @entry["occurred_on"] = params["occurred_on"]
  
      # assign relationship between entry and Place
      @entry["place_id"] = params["place_id"]
  
      # save Contact row
      @entry.save
  
      # redirect user
      redirect_to "/places/#{@entry["place_id"]}"
    end
end
