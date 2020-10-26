class Clinic < ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "在宅"
  add id: 2, choice: "施設"
  has_many :kartes
end