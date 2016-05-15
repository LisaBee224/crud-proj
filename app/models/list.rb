class List < ActiveRecord::Base
  belongs_to :user
  has_many :lists_tags
  has_many :tags, through: :lists_tags
end
