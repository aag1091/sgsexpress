require 'spec_helper'

describe User do

  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:email) }

  it { should have_many(:user_roles) }
  it { should have_many(:roles).through(:user_roles) }

end
