class VictimsController < ApplicationController
  before_action :set_victim, only: [:edit, :update, :destroy]

  def index
    @victims = Victim.with_coordinates

    @hash = Gmaps4rails.build_markers(@victims) do |victim, marker|
      marker.lat victim.latitude
      marker.lng victim.longitude
      marker.infowindow render_to_string(partial: "/victims/map_box", locals: { victim: victim })
    end
  end


  def show
  end

  def new
    @victim = Victim.new
  end


  def edit
  end

  def create
    @victim = Victim.new(victim_params)

    if @victim.save
      redirect_to victims_path, notice: 'Victim was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @victim.update(victim_params)
      redirect_to victims_path, notice: 'Victim was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @victim.destroy
    respond_to do |format|
      format.html { redirect_to victims_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_victim
      @victim = Victim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def victim_params
      params.require(:victim).permit(:date, :last_name, :first_name, :age, :victim_of, :country, :city, :zip_code, :address)
    end

end
