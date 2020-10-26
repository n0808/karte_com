class Karte < ApplicationRecord
  validates :name, presence: true
  validates :before_treatment, presence: true
  validates :after_treatment, presence: true
  validates :part, presence: true
  validates :doctor_name, presence: true
  validates :facility_name, presence: true
  validates :sex_id, presence: true
  validates :clinic_id, presence: true
  validates :instructions_id, presence: true
  validates :medical_examination_id, presence: true
  validates :day_id, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
  belongs_to_active_hash :clinic
  belongs_to_active_hash :instructions
  belongs_to_active_hash :medical_examination
  belongs_to_active_hash :day
end
