class MygoalsController < ApplicationController
  before_action :set_mygoal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mygoals = Mygoal.all
    respond_with(@mygoals)
  end

  def show
    respond_with(@mygoal)
  end

  def new
    @mygoal = Mygoal.new
    respond_with(@mygoal)
  end

  def edit
  end

  def create
    @mygoal = Mygoal.new(mygoal_params)
    flash[:notice] = 'Mygoal was successfully created.' if @mygoal.save
    t = Date.today
    for a in 0..100
      dailygoal = Dailygoal.new
      dailygoal.mygoal_id = @mygoal.id
      dailygoal.date = t + a
      dailygoal.done = false
      dailygoal.save
    end 
    respond_with(@mygoal)
  end

  def update
    flash[:notice] = 'Mygoal was successfully updated.' if @mygoal.update(mygoal_params)
    respond_with(@mygoal)
  end

  def destroy
    Dailygoal.destroy_all(:mygoal_id => @mygoal.id)
    @mygoal.destroy
    respond_with(@mygoal)

  end

  private
    def set_mygoal
      @mygoal = Mygoal.find(params[:id])
    end

    def mygoal_params
      params.require(:mygoal).permit(:name, :start, :finish, :days)
    end
end
