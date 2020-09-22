class ScrapsController < ApplicationController
  def index
  @scraps = Scrap.all
  @checked_list = []
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

def destroy_all
  checked_data = params[:deletes].keys
  puts checked_data
  Scrap.destroy(checked_data)
  respond_to do |format|
    format.html { redirect_to scraps_path, notice: 'Scraps were successfully destroyed.' }
    format.json { head :no_content }
  end
end

  private
    def scrap_params
      params.require(:scrap).permit(:title, :content, :checked_list)
    end
end
