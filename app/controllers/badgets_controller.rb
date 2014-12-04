class BadgetsController < ApplicationController
  before_action :set_badget, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @badgets = Badget.all
    respond_with(@badgets)
  end

  def show
    respond_with(@badget)
  end

  def new
    @badget = Badget.new
    respond_with(@badget)
  end

  def edit
  end

  def create
    @badget = Badget.new(badget_params)
    @badget.save
    respond_with(@badget)
  end

  def update
    @badget.update(badget_params)
    respond_with(@badget)
  end

  def destroy
    @badget.destroy
    respond_with(@badget)
  end

  private
    def set_badget
      @badget = Badget.find(params[:id])
    end

    def badget_params
      params.require(:badget).permit(:name, :level)
    end
end
