class ArtistsController < ApplicationController
    def index
        render json: Artist.all
    end

    def create
        artist = Artist.new(artist_param)

        if artist.save!
            render json: artist
        else
            render artist.errors.full_messages
        end
    end

    def show
        render json: params
    end

    def update
        artist =  Artist.new(artist_param)

        if artist.save
            render json: artist
        else
            render artist.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artist =  Artist.find(params[:id])
        artist.delete

        render json: artist
    end

    private
    def artist_param
        params.require(:artist).permit(:name, :email)
    end
end