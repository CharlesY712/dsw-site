require 'spec_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:submissions).dependent(:restrict_with_error) }
  it { is_expected.to have_many(:votes).dependent(:destroy) }
  it { is_expected.to have_many(:registrations).dependent(:destroy) }

  it { is_expected.to have_many(:presenterships).dependent(:restrict_with_error) }
  it { is_expected.to have_many(:presented_sessions) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
end
