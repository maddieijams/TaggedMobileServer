class GraffitisController < ApplicationController
    # GET /graffitis
    def index
        graffitis=Graffiti.all
        render json: graffitis
    end

    # POST /graffitis
    def create
        result = Cloudinary::Uploader.upload(params[:imageId])
        graffiti = Graffiti.create(title: params.title, description: params.description, lat: params.lat, lng: params.lng, imageId: result['url'])
        if graffiti.save
            render json: graffiti
        else
            render json: graffiti.errors
        end
    end

end
