# frozen_string_literal: true

# class Book
class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_many :orders, through: :bookorders
end
