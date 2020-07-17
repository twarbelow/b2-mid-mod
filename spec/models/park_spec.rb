require 'rails_helper'

RSpec.describe Park do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
  end
  describe 'relationships' do
    it { should have_many :rides }
  end
end
