class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  # GET /picks
  # GET /picks.json
  def index
    @picks = Pick.all
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
  end

  # GET /picks/new
  def new
    @pick = current_user.picks.build
  end

  # GET /picks/1/edit
  def edit
  end

  # POST /picks
  # POST /picks.json
  def create
    @pick = current_user.picks.build(pick_params)
    if @pick.save
      redirect_to @pick, notice: 'pick was sucessfully created'
    else
      render action: 'new'
    end
  end
   

  # PATCH/PUT /picks/1
  # PATCH/PUT /picks/1.json
  def update
    if @pick.update(pick_params)
     redirect_to @pick, notice: 'pin was sucessfully updated'
   else
     render action: 'edit'
   end
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick.destroy
    redirect_to picks_url, notice: 'pin was sucessfully destroyed'
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pick_params
      params.require(:pick).permit(:caption)
    end
end


def correct_user
  @pick = current_user.picks.find_by(id: params[:id])
  redirect_to picks_path, notice: "not authorized to edit this pin" if @pick.nil?

end
