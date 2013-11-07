class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :taggings
  has_many :tags, through: :taggings
end
