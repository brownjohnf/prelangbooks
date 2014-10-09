class Entity < ActiveRecord::Base
  belongs_to :universe
  has_and_belongs_to_many :locations
end
