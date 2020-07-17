require 'rails_helper'

RSpec.describe Ride do
  describe 'validations' do
    it { should_validate_presence_of :name }
    it { should_validate_presence_of :thrill_rating }
  end
  describe 'relationships' do
    it { should_belong_to :ride}
  end
end
