class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

	def create
		@photo = Photo.new( eval(params[:hint]) )
		@photo.image = params[:file]
		puts @photo.save

		render json: {
			image: {
				url: @photo.image.url(:small)
			}
		}, content_type: "text/html"
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:title, :caption, :document_id, :document_type, :hash_key, :image)
    end
end
