require 'rails_helper'

RSpec.describe Patient, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:birth_date) }
  it { is_expected.to validate_presence_of(:cpf) }
  
  it { is_expected.to validate_uniqueness_of(:cpf).case_insensitive }
end
