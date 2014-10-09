class Edition < ActiveRecord::Base
  belongs_to :author
  belongs_to :publisher
  belongs_to :universe
end
