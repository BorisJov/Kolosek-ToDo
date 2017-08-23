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

  describe 'done?' do
    it 'returns true if task.done is true' do
      task = FactoryGirl.create(:done_task)
      expect(task.done?).to eq(true)
    end
    it 'returns false if task.done is false' do
      task = FactoryGirl.create(:task)
      expect(task.done?).to eq(false)
    end
  end
  describe 'done!' do
    it 'sets task.done to true' do
      task = FactoryGirl.create(:task)
      task.done!
      expect(task.done).to eq(true)
    end
  end

end
