require 'rails_helper'

RSpec.describe User, type: :model do

    describe 'DB table' do
      it { is_expected.to have_db_column :firstname }
      it { is_expected.to have_db_column :lastname }
    end
  
    describe 'validations' do
      it { is_expected.to validate_presence_of :firstname }
      it { is_expected.to validate_presence_of :lastname }
    end
  
    describe 'Associations' do
      it { should have_many(:campaigns) }
    end
  
  end
