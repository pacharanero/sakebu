class DictationsController < ApplicationController
  before_action :set_dictation, only: [:show, :edit, :update, :destroy]

  # GET /dictations
  # GET /dictations.json
  def index
    @dictations = Dictation.all
  end

  # GET /dictations/1
  # GET /dictations/1.json
  def show
  end

  # GET /dictations/new
  def new
    @dictation = Dictation.new
  end

  # GET /dictations/1/edit
  def edit
  end

  # POST /dictations
  # POST /dictations.json
  def create
    @dictation = Dictation.new(dictation_params)

    respond_to do |format|
      if @dictation.save
        format.html { redirect_to @dictation, notice: 'Dictation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dictation }
      else
        format.html { render action: 'new' }
        format.json { render json: @dictation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dictations/1
  # PATCH/PUT /dictations/1.json
  def update
    respond_to do |format|
      if @dictation.update(dictation_params)
        format.html { redirect_to @dictation, notice: 'Dictation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dictation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dictations/1
  # DELETE /dictations/1.json
  def destroy
    @dictation.destroy
    respond_to do |format|
      format.html { redirect_to dictations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dictation
      @dictation = Dictation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dictation_params
      params.require(:dictation).permit(:forename, :surname, :nhs_number, :path_to_audio)
    end
end
