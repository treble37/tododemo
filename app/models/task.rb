class Task < ActiveRecord::Base
  attr_accessible :description, :duedate #, :taskable_id, :taskable_type
  belongs_to :taskable, polymorphic: true
  validates :description, presence: true
  validates :duedate, presence: true
end
