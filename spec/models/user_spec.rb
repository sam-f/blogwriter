# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:posts).dependent(:destroy_async) }
    it { should have_many(:example_posts).dependent(:delete_all) }
  end

  describe "validations" do
    subject { FactoryBot.build :user }

    it { should validate_length_of(:email).is_at_least 3 }
    # The highest possible length of an email address is 254 characters.
    it { should validate_length_of(:email).is_at_most 254 }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of :email }
    # Test validates_format_of
    it { should_not allow_value("sam@example").for :email }
    it { should_not allow_value("email").for :email }
    it { should_not allow_value("email@example.").for :email }
    it { should allow_value("email@example.com").for :email }
    it { should allow_value("email@example.boats").for :email }
  end
end
