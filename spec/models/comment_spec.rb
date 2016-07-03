require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Assocation' do
    it { is_expected.to belong_to :user  }
    it { is_expected.to belong_to :parent  }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of :message  }
    it { is_expected.to validate_presence_of :user_id  }
  end
end
