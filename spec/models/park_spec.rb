require 'rails_helper'

RSpec.describe Park do
  describe 'validations' do
    it { should_validate_presence_of :name }
    it { should_validate_presence_of :price }
  end
  describe 'relationships' do
    it { should_have_many :rides }
  end
end
