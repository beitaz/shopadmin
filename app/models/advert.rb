class Advert
  include Mongoid::Document
  field :pic_url, type: String
  field :advert_url, type: String
end
