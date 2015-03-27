class Event < ActiveRecord::Base
  has_many :divisions
  has_many :scoped_divisions
end
