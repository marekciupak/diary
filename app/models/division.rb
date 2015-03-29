class Division < ActiveRecord::Base
  has_many :assignments
  has_many :subjects, through: :assignments
  has_one :user
end
