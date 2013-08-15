class Folder < ActiveRecord::Base
  attr_accessible :name, :todouser_id
  has_many :tasks, as: :taskable
  belongs_to :todouser
  validates :name, presence: true
  validates :todouser_id, presence: true
end
