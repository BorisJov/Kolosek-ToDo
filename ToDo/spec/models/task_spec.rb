require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) do
    Task.create(text: 'Sample', done: false)
  end

  it 'is valid' do
    expect(task).to be_valid
  end
  it 'is invalid without text' do
  end
end
