# frozen_string_literal: true

require "rails_helper"

RSpec.describe ExamplePost, type: :model do
  describe "associations" do
    it { should belong_to :user }
  end

  describe "validations" do
    it { should validate_length_of(:title).is_at_least 5 }
    it { should validate_length_of(:title).is_at_most 140 }
    it { should validate_presence_of :content }
  end
end
