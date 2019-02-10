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
        @product = Product.create(:name => "LHL Cup", :price => 90, :quantity => 20, :category => @category)

        expect(@product.name).to be_present
        
      end

      # it 'should need a valid name' do
      #   @product = Product.create(:name => "", :price => 90, :quantity => 20, :category => @category)

      #   puts @product.errors.full_messages
      #   expect(@product.valid?).to be true
      # end

    end

    describe "price" do
      it 'should be exist' do
        @product = Product.create(:name => "LHL Cup", :price => 90, :quantity => 20, :category => @category)
        expect(@product.price).to be_present
      end
    end

    describe "quantity" do
      it 'should be exist' do
        @product = Product.create(:name => "LHL Cup", :price => 90, :quantity => 20, :category => @category)
        expect(@product.quantity).to be_present
      end
    end

    describe "category" do
      it 'should be exist' do
        @product = Product.create(:name => "LHL Cup", :price => 90, :quantity => 20, :category => @category)
        expect(@product.category).to be_present
      end
    end

    # describe "error message" do
    #   it 'should not be exist' do
    #     @product = Product.create(:name => "LHL Cup", :price => 90, :quantity => 20, :category => @category)
    #      puts @product.errors.full_messages
    #     expect(@product.errors.full_messages).to be false
    #   end
    # end
    
  end
end