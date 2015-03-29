class Subject < ActiveRecord::Base
  has_many :appointments
  has_many :assignments, through: :assignments

  validates :name, presence: true, length: { minimum: 4 }
  validates :description, presence:true, length: {minimum: 10}
end
