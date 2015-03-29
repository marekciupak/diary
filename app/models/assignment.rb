class Assignment < ActiveRecord::Base
  belongs_to :division
  belongs_to :subject
end
