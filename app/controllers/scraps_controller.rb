class ScrapsController < ApplicationController
  def index
  @scraps = Scrap.all
end

def new
  @scrap = Scrap.new
end

def create
  @scrap = Scrap.create(scrap_params)
  redirect_to scraps_path
end

def edit
  @scrap = Scrap.find(params[:id])
end

def update
  @scrap = Scrap.find(params[:id])
  @scrap.update(scrap_params)
  redirect_to scraps_path
end

def destroy
    @scrap = Scrap.find(params[:id])
    @scrap.destroy
    redirect_to scraps_path
end

  private
    def scrap_params
      params.require(:scrap).permit(:title, :content)
    end
end
