class Sex < ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "男性"
  add id: 2, choice: "女性"

  has_many :kartes
end