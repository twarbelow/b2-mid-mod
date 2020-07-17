require 'rails_helper'

RSpec.describe Ride do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :thrill_rating }
  end
  describe 'relationships' do
    it { should belong_to :park}
    it { should have_many :ride_mechanics}
    it { should have_many(:mechanics).through(:ride_mechanics)}
  end
end
