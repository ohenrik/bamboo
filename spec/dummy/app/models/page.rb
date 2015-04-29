class Page < ActiveRecord::Base

  has_many :structures, as: :constructable, class_name: "::Bamboo::Structure"

end
