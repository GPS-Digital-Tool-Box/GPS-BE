require 'rails_helper'

RSpec.describe Notebook, type: :model do

  describe 'relationships' do
    it { should belong_to(:user) }
  end

end