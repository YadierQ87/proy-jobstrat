class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category
  accepts_nested_attributes_for :category, allow_destroy: true
  default_scope -> { order(created_at: :desc) }
end
