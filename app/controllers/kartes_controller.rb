class KartesController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show,]
  # before_action :set_karte, only: [:index,:edit, :update, :show, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    if user_signed_in?
      @kartes = current_user.kartes.all.order('created_at DESC')
    end
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
      render("kartes/new")
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

  def search
    @keyword = params[:keyword]
    @kartes = Karte.search(params[:keyword]).order('created_at DESC')
  end


  private

  def karte_params
    params.require(:karte).permit(:name, :before_treatment, :after_treatment, :part, :doctor_name, :facility_name, :sex_id, :clinic_id, :instructions_id, :medical_examination_id, :day_id, :doctor_start_date, :doctor_end_date, :dh_start_date, :dh_end_date) .merge(user_id: current_user.id)
  end

  def set_post
    @karte = current_user.kartes.find(params[:id])
  end
end
