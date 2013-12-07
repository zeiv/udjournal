class SabstractsController < ApplicationController
  before_action :set_sabstract, only: [:show, :edit, :update, :destroy]

  # GET /sabstracts
  # GET /sabstracts.json
  def index
    @sabstracts = Sabstract.all
  end

  # GET /sabstracts/1
  # GET /sabstracts/1.json
  def show
  end

  # GET /sabstracts/new
  def new
    @sabstract = Sabstract.new
  end

  # GET /sabstracts/1/edit
  def edit
  end

  # POST /sabstracts
  # POST /sabstracts.json
  def create
    @sabstract = Sabstract.new(sabstract_params)

    respond_to do |format|
      if @sabstract.save
        format.html { redirect_to @sabstract, notice: 'Sabstract was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sabstract }
      else
        format.html { render action: 'new' }
        format.json { render json: @sabstract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sabstracts/1
  # PATCH/PUT /sabstracts/1.json
  def update
    respond_to do |format|
      if @sabstract.update(sabstract_params)
        format.html { redirect_to @sabstract, notice: 'Sabstract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sabstract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sabstracts/1
  # DELETE /sabstracts/1.json
  def destroy
    @sabstract.destroy
    respond_to do |format|
      format.html { redirect_to sabstracts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sabstract
      @sabstract = Sabstract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sabstract_params
      params.require(:sabstract).permit(:title, :content, :user_id, :department_id, :featured, :published, authors_attributes: [:id, :name, :email, :affiliation, :position])
    end
end
