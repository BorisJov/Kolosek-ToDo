class Task < ApplicationRecord
  validates :text, presence: true

  def done?
    self.done
  end

  def done!
    self.done = true
    save!
  end

end
