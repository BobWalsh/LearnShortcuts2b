class CheatsheetsController < ApplicationController
  before_action :set_cheatsheet, only: [:show, :edit, :update, :destroy]

  # GET /cheatsheets
  # GET /cheatsheets.json
  def index
    @cheatsheets = Cheatsheet.all
  end

  # GET /cheatsheets/1
  # GET /cheatsheets/1.json
  def show
    @cards = Card.where(cheatsheet_id: @cheatsheet.id)
  end

  # GET /cheatsheets/new
  def new
    @cheatsheet = Cheatsheet.new
  end

  # GET /cheatsheets/1/edit
  def edit
  end

  # POST /cheatsheets
  # POST /cheatsheets.json
  def create
    @cheatsheet = Cheatsheet.new(cheatsheet_params)

    respond_to do |format|
      if @cheatsheet.save
        format.html { redirect_to @cheatsheet, notice: 'Cheatsheet was successfully created.' }
        format.json { render :show, status: :created, location: @cheatsheet }
      else
        format.html { render :new }
        format.json { render json: @cheatsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cheatsheets/1
  # PATCH/PUT /cheatsheets/1.json
  def update
    respond_to do |format|
      if @cheatsheet.update(cheatsheet_params)
        format.html { redirect_to @cheatsheet, notice: 'Cheatsheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @cheatsheet }
      else
        format.html { render :edit }
        format.json { render json: @cheatsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheatsheets/1
  # DELETE /cheatsheets/1.json
  def destroy
    @cheatsheet.destroy
    respond_to do |format|
      format.html { redirect_to cheatsheets_url, notice: 'Cheatsheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cheatsheet
      @cheatsheet = Cheatsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cheatsheet_params
      params.require(:cheatsheet).permit(:display_name, :description, :os, :image, :level )
    end
end
