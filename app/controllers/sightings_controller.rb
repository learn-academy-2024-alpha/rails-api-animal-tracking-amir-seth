class SightingsController < ApplicationController
    def create
        sightings = Sighting.all
        render json: sightings
    end

    def show
        sighting = Sighting.find(params[:id])
        render json: sighting
    end

    def create
        sighting = Sighting.create(sighting_params)
        render json: sighting
    end

    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        render json: sighting

    private
    def sighting_params
        params.require(:sighting).permit(:longitude, :latitude, :date, :animal_id)
    end
end
