require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:username) }

    it { should allow_values('test@test.com',
                             'test@test.co.jp').for(:username) }

    it { should_not allow_values('test.com',
                                 'test@test',
                                 'somestring',
                                 '').for(:username)}
  end

  describe 'relationships' do
    it { should have_many(:notebooks) }
  end

end

