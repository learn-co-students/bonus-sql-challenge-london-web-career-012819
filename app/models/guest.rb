class Guest < ActiveRecord::Base
  has_one :group
  has_one :show
end
