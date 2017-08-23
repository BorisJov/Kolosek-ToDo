require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  let(:valid_attributes) do
    { text: 'Sample todo', done: false }
  end
  let(:invalid_attributes) do
    { text: nil, done: true }
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      task = Task.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Task' do
        expect do
          post :create, params: { task: valid_attributes }, session: valid_session
        end.to change(Task, :count).by(1)
      end

      it 'redirects to index' do
        post :create, params: { task: valid_attributes }, session: valid_session
        expect(response).to redirect_to(tasks_path)
      end
    end

    context 'with invalid params' do
      it 'returns a fail response' do
        post :create, params: { task: invalid_attributes }, session: valid_session
        expect(response).to_not be_success
      end
    end
  end

  describe 'PUT #update' do
    it 'makes the task done' do
      task = Task.create! valid_attributes
      put :update, params: { id: task.to_param }, session: valid_session
      task.reload
      expect(task.done).to eq(true)
    end

    xit 'redirects to the index' do

      # ne znam kako se za json testira

      task = Task.create! valid_attributes
      put :update, params: { id: task.to_param, task: valid_attributes }, session: valid_session
      expect(response).to redirect_to(tasks_path)
    end
  end
end
