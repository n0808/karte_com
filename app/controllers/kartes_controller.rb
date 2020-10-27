class KartesController < ApplicationController
  def index
  end

  def new
    @karte = Karte.new
  end

  def create
    Karte.create(karte_params)
  end

  private

  def karte_params
    params.require(:karte).permit(:name, :before_treatment, :after_treatment, :part, :doctor_name, :facility_name, :sex_id, :clinic_id, :instructions_id, :medical_examination_id, :day_id,)
  end

end
