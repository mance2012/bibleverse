class ImagefilesController < ApplicationController
  before_action :set_imagefile, only: [:show, :edit, :update, :destroy]

  # GET /imagefiles
  # GET /imagefiles.json
  def index
    @imagefiles = Imagefile.all
  end

  # GET /imagefiles/1
  # GET /imagefiles/1.json
  def show
  end

  # GET /imagefiles/new
  def new
    @imagefile = Imagefile.new
  end

  # GET /imagefiles/1/edit
  def edit
  end

  # POST /imagefiles
  # POST /imagefiles.json
  def create
    @imagefile = Imagefile.new(imagefile_params)

    respond_to do |format|
      if @imagefile.save
        format.html { redirect_to @imagefile, notice: 'Imagefile was successfully created.' }
        format.json { render :show, status: :created, location: @imagefile }
      else
        format.html { render :new }
        format.json { render json: @imagefile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagefiles/1
  # PATCH/PUT /imagefiles/1.json
  def update
    respond_to do |format|
      if @imagefile.update(imagefile_params)
        format.html { redirect_to @imagefile, notice: 'Imagefile was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagefile }
      else
        format.html { render :edit }
        format.json { render json: @imagefile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagefiles/1
  # DELETE /imagefiles/1.json
  def destroy
    @imagefile.destroy
    respond_to do |format|
      format.html { redirect_to imagefiles_url, notice: 'Imagefile was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render "remove_image_file"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagefile
      @imagefile = Imagefile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagefile_params
      params[:imagefile]
    end
end
