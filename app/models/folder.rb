class Folder < ActiveRecord::Base
  attr_accessible :name, :todouser_id
  has_many :tasks, as: :commentable
  belongs_to :todouser
end
