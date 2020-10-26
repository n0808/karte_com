class Sex < ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "男"
  add id: 2, choice: "女"

  has_many :kartes
end