class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: "User"
  belongs_to :movie
  has_many :ratings
  has_many :raters, through: :ratings
  has_many :comments
  has_many :commenters, through: :comments
end
