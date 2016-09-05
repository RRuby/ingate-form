require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    subject{ create(:user) }

    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:email) }
  end
end
