class Instrutions < ActiveHash::Base
  include ActiveHash::Associations
  field :choice
  add id: 1, choice: "TBI"
  add id: 2, choice: "義歯管理"
  add id: 3, choice: "口腔清掃"
  add id: 4, choice: "運動"
  add id: 5, choice: "マッサージ"
  add id: 6, choice: "リハビリ"
  add id: 7, choice: "その他"
  has_many :kartes
end