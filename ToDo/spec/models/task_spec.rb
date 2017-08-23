require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) do
    task = FactoryGirl.create(:task)
  end

  it 'is valid' do
    expect(task).to be_valid
  end
  it 'is invalid without text' do
    task.text = nil
    expect(task).to_not be_valid
  end
end
