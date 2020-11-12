class Karte < ApplicationRecord

  validates :name, presence: true
  validates :before_treatment, presence: true
  validates :after_treatment, presence: true
  validates :doctor_name, presence: true
  validates :sex_id, presence: true
  validates :clinic_id, presence: true
  validates :medical_examination_id, presence: true
  validates :day_id, presence: true
  validates :instructions_id, presence: true
  validates :doctor_start_date, presence: true
  validates :doctor_end_date, presence: true
  validate :dh_start_date
  validate :dh_end_date

  belongs_to :user, class_name: "User", foreign_key: "user_id"

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
  belongs_to_active_hash :clinic
  belongs_to_active_hash :instructions
  belongs_to_active_hash :medical_examination
  belongs_to_active_hash :day

  def self.search(search)
    if search != ""
      Karte.where('name LIKE(?)',"%#{search}%")
    else
      Karte.all
    end
  end


end
