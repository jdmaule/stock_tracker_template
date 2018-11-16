require 'rails_helper'

RSpec.describe Stock, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    it { should have_many(:follows) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:ticker) }
      
    end
end
