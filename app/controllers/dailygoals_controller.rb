class DailygoalsController < ApplicationController
  before_action :set_dailygoal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def indexs
    @dailygoals = Dailygoal.where(:mygoal_id => params[:id])
    respond_with(@dailygoals)
  end

  def show
   
    #@dailygoal= Dailygoal.where(:mygoal_id => params[:id], :date => Date.today).take
    respond_with(@dailygoal)
  end

  def new
    @dailygoal = Dailygoal.new  
    @dailygoal.mygoal_id =  :mygoal_id
    respond_with(@dailygoal)
  end


  def edits
    
    @dailygoal= Dailygoal.where(:mygoal_id => params[:id], :date => Date.today).take
    
  end

  def create
    @dailygoal = Dailygoal.find(params[:mygoal_id])
    @dailygoal.description= params[:description]
    @dailygoal.save
    respond_with(@dailygoal)
  end

  def update
    
    @dailygoal.update(dailygoal_params)
    #respond_with(@dailygoal)
    redirect_to(root_path)
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
