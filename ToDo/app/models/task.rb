class Task < ApplicationRecord
  validates :text, presence: true

  def done?
    done
  end

  def done!
    done = true
  end

end
