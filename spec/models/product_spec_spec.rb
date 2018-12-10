require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    before do
      @category = Category.create(:name => "Kitchen")
      @product = Product.create(:name => "LHL Cup", :price => nil, :quantity => 20, :category => @category)
    end

    # if you want to check all in at a time
    # describe "product" do
    #   it 'should be valid' do
    #     expect(@product.valid?).to be true
    #   end
    # end

    describe "name" do
      it 'should be exist' do
        # puts @product.inspect
        expect(@product.name).to be_present
      end

    end

    describe "price" do
      it 'should be exist' do
        expect(@product.price).to be_present
      end
    end

    describe "quantity" do
      it 'should be exist' do
        expect(@product.quantity).to be_present
      end
    end

    describe "category" do
      it 'should be exist' do
        expect(@product.category).to be_present
      end
    end

    describe "error message" do
      it 'should be exist' do
        puts @product.errors.full_messages
        expect(@product.errors.full_messages).to be_present
      end
    end
    
  end
end