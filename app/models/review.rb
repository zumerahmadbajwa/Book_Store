# frozen_string_literal: true

# class Review
class Review < ApplicationRecord
  belongs_to :book
  belongs_to :customer
end
