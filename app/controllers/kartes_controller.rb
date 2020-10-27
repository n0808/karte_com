class KartesController < ApplicationController
  def index
  end

  def new
    @karte = Karte.new
  end

  def create
    @karte = Karte.create(karte_params)
    if @karte.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def karte_params
    params.require(:karte).permit(:name, :before_treatment, :after_treatment, :part, :doctor_name, :facility_name, :sex_id, :clinic_id, :instructions_id, :medical_examination_id, :day_id,).merge(user_id: current_user.id)
  end

end
