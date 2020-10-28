class KartesController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show,]
  # before_action :set_karte, only: [:index,:edit, :update, :show, :destroy]
  before_action :authenticate_user!

  def index
    @kartes = current_user.kartes.all.order('created_at DESC')
  end

  def new
    @karte = Karte.new
    @karte = current_user.kartes.build
  end

  def create
    @karte = Karte.create(karte_params)
    if @karte.created_at
      redirect_to root_path
      logger.debug @karte.errors.inspect
    else
      render :new
    end
  end

  def show
  end


  private

  def karte_params
    params.require(:karte).permit(:name, :before_treatment, :after_treatment, :part, :doctor_name, :facility_name, :sex_id, :clinic_id, :instructions_id, :medical_examination_id, :day_id,).merge(user_id: current_user.id)
  end


  def set_post
    @karte = current_user.kartes.find(params[:id])
  end
end
