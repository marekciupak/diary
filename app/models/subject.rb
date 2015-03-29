class Subject < ActiveRecord::Base
  has_many :assignments
  has_many :divisions, through: :assignments

  belongs_to :user #nauczyciel

  validates :name, presence: true, length: { minimum: 4 }
  validates :description, presence:true, length: {minimum: 10}
end
