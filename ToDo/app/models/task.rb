class Task < ApplicationRecord
  validates :text, :done, presence: true
end
