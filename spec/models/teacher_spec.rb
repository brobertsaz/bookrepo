require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it { should belong_to(:school) }
end
