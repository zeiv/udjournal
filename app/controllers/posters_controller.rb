class PostersController < ApplicationController
  # filter_resource_access
  before_action :set_poster, only: [:show, :edit, :update, :destroy]

  # GET /posters
  # GET /posters.json
  def index
    @posters = Poster.all
  end

  # GET /posters/1
  # GET /posters/1.json
  def show
  end

  # GET /posters/new
  def new
    @poster = Poster.new
  end

  # GET /posters/1/edit
  def edit
  end

  # POST /posters
  # POST /posters.json
  def create
    @poster = Poster.new(poster_params)

    respond_to do |format|
      if @poster.save
        format.html { redirect_to @poster, notice: 'Poster was successfully created.' }
        format.json { render action: 'show', status: :created, location: @poster }
      else
        format.html { render action: 'new' }
        format.json { render json: @poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posters/1
  # PATCH/PUT /posters/1.json
  def update
    respond_to do |format|
      if @poster.update(poster_params)
        format.html { redirect_to @poster, notice: 'Poster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posters/1
  # DELETE /posters/1.json
  def destroy
    @poster.destroy
    respond_to do |format|
      format.html { redirect_to posters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poster
      @poster = Poster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poster_params
      params.require(:poster).permit(:user_id, :department_id, :sabstract_id, :pdf, :sabstract, :authors, :featured, :published, sabstract_attributes: [:id, :name, :_destroy, :title, :content, :authors, :document_id, :document_type], authors_attributes: [:id, :name, :_destroy, :email, :affiliation, :position, :document_id, :document_type])
    end
end
