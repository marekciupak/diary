class Division < ActiveRecord::Base
  has_many :assignments
  has_many :subjects, through: :assignments
  has_many :users
  has_many :grades, through: :users
end
