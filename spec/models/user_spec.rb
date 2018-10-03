require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid without a email' do
    expect(User.new(email: nil)).to_not be_valid
  end

  it 'is not valid without a password' do
    expect(User.new(email: 'test@test.com', password: nil)).to_not be_valid
  end
end
