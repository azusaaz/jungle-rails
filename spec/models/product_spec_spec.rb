require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    before do
      @category = Category.create(:name => "Kitchen")

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
        @product = Product.create(:name => "", :price => 22, :quantity => 20, :category => @category)
        expect(@product.name).to_not be_present
      end

    end

    describe "price" do
      it 'should be exist' do
        @product = Product.create(:name => "LHL Cup", :price => nil, :quantity => 20, :category => @category)
        expect(@product.price).to_not be_present
      end
    end

    describe "quantity" do
      it 'should be exist' do
        @product = Product.create(:name => "LHL Cup", :price => 22, :quantity => nil, :category => @category)
        expect(@product.quantity).to_not be_present
      end
    end

    describe "category" do
      it 'should be exist' do
        @product = Product.create(:name => "LHL Cup", :price => 22, :quantity => 20, :category => nil)
        expect(@product.category).to_not be_present
      end
    end

    # describe "error message" do
    #   @product = Product.create(:name => "LHL Cup", :price => nil, :quantity => 20, :category => @category)
    #   it 'should be exist' do
    #     puts @product.errors.full_messages
    #     expect(@product.errors.full_messages).to be_present
    #   end
    # end
    
  end
end