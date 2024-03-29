class SightingsController < ApplicationController
    def index
        sightings = Sighting.where(date: params[:start_date]..params[:end_date])
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
    end

    def destroy
        sighting = Sighting.find(params[:id])
        sighting.destroy
        render json: sighting
    end


    private
    def sighting_params
        params.require(:sighting).permit(:start_date, :end_date, :longitude, :latitude, :date, :animal_id)
    end
end


