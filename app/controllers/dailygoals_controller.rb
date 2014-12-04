class DailygoalsController < ApplicationController
  before_action :set_dailygoal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dailygoals = Dailygoal.all
    respond_with(@dailygoals)
  end

  def show
    respond_with(@dailygoal)
  end

  def new
    @dailygoal = Dailygoal.new
    respond_with(@dailygoal)
  end

  def edit
  end

  def create
    @dailygoal = Dailygoal.new(dailygoal_params)
    @dailygoal.save
    respond_with(@dailygoal)
  end

  def update
    @dailygoal.update(dailygoal_params)
    respond_with(@dailygoal)
  end

  def destroy
    @dailygoal.destroy
    respond_with(@dailygoal)
  end

  private
    def set_dailygoal
      @dailygoal = Dailygoal.find(params[:id])
    end

    def dailygoal_params
      params.require(:dailygoal).permit(:done, :description, :comment)
    end
end
