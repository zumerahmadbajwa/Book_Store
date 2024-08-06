# frozen_string_literal: true

# class BookOrder
class BookOrder < ApplicationRecord
  belongs_to :book
  belongs_to :order
end
