 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/custos", type: :request do
  # Custo. As you add validations to Custo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Custo.create! valid_attributes
      get custos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      custo = Custo.create! valid_attributes
      get custo_url(custo)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_custo_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      custo = Custo.create! valid_attributes
      get edit_custo_url(custo)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Custo" do
        expect {
          post custos_url, params: { custo: valid_attributes }
        }.to change(Custo, :count).by(1)
      end

      it "redirects to the created custo" do
        post custos_url, params: { custo: valid_attributes }
        expect(response).to redirect_to(custo_url(Custo.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Custo" do
        expect {
          post custos_url, params: { custo: invalid_attributes }
        }.to change(Custo, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post custos_url, params: { custo: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested custo" do
        custo = Custo.create! valid_attributes
        patch custo_url(custo), params: { custo: new_attributes }
        custo.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the custo" do
        custo = Custo.create! valid_attributes
        patch custo_url(custo), params: { custo: new_attributes }
        custo.reload
        expect(response).to redirect_to(custo_url(custo))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        custo = Custo.create! valid_attributes
        patch custo_url(custo), params: { custo: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested custo" do
      custo = Custo.create! valid_attributes
      expect {
        delete custo_url(custo)
      }.to change(Custo, :count).by(-1)
    end

    it "redirects to the custos list" do
      custo = Custo.create! valid_attributes
      delete custo_url(custo)
      expect(response).to redirect_to(custos_url)
    end
  end
end