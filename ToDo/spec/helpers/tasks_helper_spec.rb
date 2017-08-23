require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TasksHelper. For example:
#
# describe TasksHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TasksHelper, type: :helper do
  describe 'item_name' do
    it 'returns id + style for task.done?==true' do
      task = FactoryGirl.create(:done_task)
      expect(helper.item_name(task)).to eq("id=task_#{task.id} style=color:#FF0000")
    end
    it 'returns just id for task.done?==false' do
      task = FactoryGirl.create(:task)
      expect(helper.item_name(task)).to eq("id=task_#{task.id}")
    end
  end
end
