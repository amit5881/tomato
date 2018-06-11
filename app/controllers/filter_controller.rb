class FilterController < ApplicationController

  def both
     @resturants = Resturant.where(cuisines: "Both")
    # @resturants = Resturant.filter(:params => params, cuisines: "Both" )

    respond_to do |format|
       format.html # both.html.erb
       format.json { render json: @resturants }
     end
  end

  def veg
    @resturants = Resturant.where(cuisines: "Veg")

    respond_to do |format|
      format.html # both.html.erb
      format.json { render json: @resturants }
    end
  end

  def nonveg
    @resturants = Resturant.where(cuisines: "Non-Veg.")

    respond_to do |format|
      format.html # both.html.erb
      format.json { render json: @resturants }
    end
  end

  # --------------for location-------------------------

  def delhi
    @resturants = Resturant.all
    @location = Location.where(location: "Delhi").all
    # @location = Location.find(4)
    @filter = []
    for r in @resturants
      for l in @location
        if r.id == l.resturant_id
          @filter << r
        end
      end
    end
    # render text: "delhi"
    # @location = Location.where(location: "Delhi")
    # @resturants = @location.map { |r| r.resturants.where(resturant_id: @location.id) }
  end

  def chennai
    # render text: "chennai"
    @resturants = Resturant.all
    @location = Location.where(location: "Chennai").all
    # @location = Location.find(4)
    @filter = []
    for r in @resturants
      for l in @location
        if r.id == l.resturant_id
          @filter << r
        end
      end
    end
  end

end
