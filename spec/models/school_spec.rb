require 'rails_helper'

RSpec.describe School, type: :model do
  it { should have_many(:students) }
  it { should have_many(:teachers) }

  it 'is not valid without a name' do
    expect(School.new(name: nil)).to_not be_valid
  end

  it 'is not valid without a street_address' do
    expect(School.new(name: 'New School', street_address: nil)).to_not be_valid
  end
end
