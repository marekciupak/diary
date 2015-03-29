class Division < ActiveRecord::Base
  has_many :assignments
  has_many :subjects, through: :assignments
  has_many :user
  has_many :grades, through: :users
end
