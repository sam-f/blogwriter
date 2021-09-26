# frozen_string_literal: true

require "rails_helper"

RSpec.describe Post, type: :model do
  describe "associations" do
    it { should belong_to :user }
    it { should have_rich_text :content }
    it { should have_one_attached :header_image }
  end

  describe "validations" do
    subject { FactoryBot.build(:post) }
    it { should validate_presence_of :title }
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:title).is_at_least(5) }
    it { should validate_length_of(:title).is_at_least(5) }
    it { should validate_uniqueness_of(:title).case_insensitive }
  end
end
