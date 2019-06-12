class CheatsheetsController < ApplicationController
  before_action :set_cheatsheet, only: [:show, :edit, :update, :destroy]

  # GET /cheatsheets
  # GET /cheatsheets.json
  def index
    @cheatsheets = Cheatsheet.all
if !current_user
      # puts "is a guest"
      @guest_id = SecureRandom.uuid
      @user_id = "nil"
      @red_count = 0
      @yellow_count = 0
      @green_count = 0
      @white_count = 6
      @class_results = "navbar-menu button tooltip is-tooltip-bottom"
      @points_this_week = "-*-"
      @points_tooltip_text = "As a User, your learning earns Points!"
    else
      # is a user
      # puts "is a user"
      # todo - check that the user was not just a guest and there are scorecards for them
      if current_user.trial_days? >= 3
        @is_purple = "is-success"
      elsif current_user.trial_days? == 2
        @is_purple = "is-warning"
      else
        @is_purple = "is-danger"
      end
      @guest_id = "nil"
      @user_id = current_user.id
      # Points this week btn
      if current_user
        @red_count = Scorecard.redcards.where(user_id: current_user.id).all.count
        @yellow_count = Scorecard.yellowcards.where(user_id: current_user.id).count
        @green_count = Scorecard.greencards.where(user_id: current_user.id).count
        @white_count = Scorecard.whitecards.where(user_id: current_user.id).count
        @points_this_week = DsPoint.where(user_id: current_user.id).points_this_week.to_a[0][1]
        @points_last_week = DsPoint.where(user_id: current_user.id).points_last_week.to_a[0][1]
        if @points_this_week > @points_last_week
          @class_results = "navbar-menu button is-primary tooltip is-tooltip-bottom"
          @points_tooltip_text = "You're ahead of last week's points of " + @points_last_week.to_s + "!"
        elsif @points_this_week < @points_last_week
          @class_results = "navbar-menu button is-danger tooltip is-tooltip-bottom"
          @points_tooltip_text = "You're under last week's total points of " + @points_last_week.to_s + "."
        else
          # they are tied
          @class_results = "navbar-menu button is-warning tooltip is-tooltip-bottom"
          @points_tooltip_text = "You've tied last week's total points of " + @points_last_week.to_s + "!"
        end
      else
        @class_results = "navbar-menu button tooltip is-tooltip-bottom"
        @points_this_week = "-*-"
      end
      # end Points this week btn
    end

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
