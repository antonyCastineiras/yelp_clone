require 'rails_helper'

describe 'User' do
  context 'User has many reviewed restaurants' do
    it { is_expected.to have_many :reviewed_restaurants }
  end
end
