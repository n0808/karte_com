class MedicalExamination < ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "初診"
  add id: 2, choice: "再診"
  add id: 3, choice: "急患"
  add id: 4, choice: "DRチェック"
  add id: 5, choice: "再初診"

  has_many :kartes
end