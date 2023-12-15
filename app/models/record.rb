# frozen_string_literal: true

class Record < ApplicationRecord # rubocop:todo Style/Documentation
  validates :name, presence: true
  validates :course, presence: true
  validates :allergy, presence: true
  validates :title, presence: true
end
