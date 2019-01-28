require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  let!(:user) { FactoryBot.create(:user)}

  describe "User vists his notes using GET #index" do
    it "Redirect to login page for non logged in user" do
      get :index
      expect(response).to redirect_to('/users/sign_in')
    end

    it "Successful response for logged in user" do
      sign_in user
      get :index
      expect(response).to be_successful
    end

    it "Responds with user's notes" do
      sign_in user
      #Note.destroy_all
      note1 = FactoryBot.create(:note)
      note2 = FactoryBot.create(:note)
      get :index
      expect(Note.count).to eq(2)
    end
  end

  describe "User tries to create new note" do
    it "Redirect to login page for non logged in user" do
      get :new
      expect(response).to redirect_to('/users/sign_in')
    end
    
    it "User tries #new note" do
      sign_in user
      get :new
      expect(response).to be_successful
    end

    it "User tries to create new note using #create" do
      sign_in user
      note_params = FactoryBot.attributes_for(:note)
      expect do
       post :create, params: { note: note_params }
      end.to change{Note.count}.by(1)
    end
  end
end
