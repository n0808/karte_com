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
    @karte = Karte.find(params[:id])
  end

  def edit
    @karte = Karte.find(params[:id])
  end

  def update
    @karte = Karte.find(params[:id])
    if @karte.update(karte_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @karte = Karte.find(params[:id])
    if @karte.destroy
      redirect_to delete_done_kartes_path
    else
      flash[:alert] = '削除できませんでした'
      render :show
    end
  end


  private

  def karte_params
    params.require(:karte).permit(:name, :before_treatment, :after_treatment, :part, :doctor_name, :facility_name, :sex_id, :clinic_id, :instructions_id, :medical_examination_id, :day_id,).merge(user_id: current_user.id)
  end


  # def set_karte
  #   @karte = Karte.find(params[:id])
  # end

  def set_post
    @karte = current_user.kartes.find(params[:id])
  end
end
