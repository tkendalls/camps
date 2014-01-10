require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CampOfferingsController do

  # This should return the minimal set of attributes required to create a valid
  # CampOffering. As you add validations to CampOffering, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "camp_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CampOfferingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all camp_offerings as @camp_offerings" do
      camp_offering = CampOffering.create! valid_attributes
      get :index, {}, valid_session
      assigns(:camp_offerings).should eq([camp_offering])
    end
  end

  describe "GET show" do
    it "assigns the requested camp_offering as @camp_offering" do
      camp_offering = CampOffering.create! valid_attributes
      get :show, {:id => camp_offering.to_param}, valid_session
      assigns(:camp_offering).should eq(camp_offering)
    end
  end

  describe "GET new" do
    it "assigns a new camp_offering as @camp_offering" do
      get :new, {}, valid_session
      assigns(:camp_offering).should be_a_new(CampOffering)
    end
  end

  describe "GET edit" do
    it "assigns the requested camp_offering as @camp_offering" do
      camp_offering = CampOffering.create! valid_attributes
      get :edit, {:id => camp_offering.to_param}, valid_session
      assigns(:camp_offering).should eq(camp_offering)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CampOffering" do
        expect {
          post :create, {:camp_offering => valid_attributes}, valid_session
        }.to change(CampOffering, :count).by(1)
      end

      it "assigns a newly created camp_offering as @camp_offering" do
        post :create, {:camp_offering => valid_attributes}, valid_session
        assigns(:camp_offering).should be_a(CampOffering)
        assigns(:camp_offering).should be_persisted
      end

      it "redirects to the created camp_offering" do
        post :create, {:camp_offering => valid_attributes}, valid_session
        response.should redirect_to(CampOffering.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved camp_offering as @camp_offering" do
        # Trigger the behavior that occurs when invalid params are submitted
        CampOffering.any_instance.stub(:save).and_return(false)
        post :create, {:camp_offering => { "camp_id" => "invalid value" }}, valid_session
        assigns(:camp_offering).should be_a_new(CampOffering)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CampOffering.any_instance.stub(:save).and_return(false)
        post :create, {:camp_offering => { "camp_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested camp_offering" do
        camp_offering = CampOffering.create! valid_attributes
        # Assuming there are no other camp_offerings in the database, this
        # specifies that the CampOffering created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CampOffering.any_instance.should_receive(:update_attributes).with({ "camp_id" => "1" })
        put :update, {:id => camp_offering.to_param, :camp_offering => { "camp_id" => "1" }}, valid_session
      end

      it "assigns the requested camp_offering as @camp_offering" do
        camp_offering = CampOffering.create! valid_attributes
        put :update, {:id => camp_offering.to_param, :camp_offering => valid_attributes}, valid_session
        assigns(:camp_offering).should eq(camp_offering)
      end

      it "redirects to the camp_offering" do
        camp_offering = CampOffering.create! valid_attributes
        put :update, {:id => camp_offering.to_param, :camp_offering => valid_attributes}, valid_session
        response.should redirect_to(camp_offering)
      end
    end

    describe "with invalid params" do
      it "assigns the camp_offering as @camp_offering" do
        camp_offering = CampOffering.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CampOffering.any_instance.stub(:save).and_return(false)
        put :update, {:id => camp_offering.to_param, :camp_offering => { "camp_id" => "invalid value" }}, valid_session
        assigns(:camp_offering).should eq(camp_offering)
      end

      it "re-renders the 'edit' template" do
        camp_offering = CampOffering.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CampOffering.any_instance.stub(:save).and_return(false)
        put :update, {:id => camp_offering.to_param, :camp_offering => { "camp_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested camp_offering" do
      camp_offering = CampOffering.create! valid_attributes
      expect {
        delete :destroy, {:id => camp_offering.to_param}, valid_session
      }.to change(CampOffering, :count).by(-1)
    end

    it "redirects to the camp_offerings list" do
      camp_offering = CampOffering.create! valid_attributes
      delete :destroy, {:id => camp_offering.to_param}, valid_session
      response.should redirect_to(camp_offerings_url)
    end
  end

end
