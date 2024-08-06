# frozen_string_literal: true

# class Customer
class Customer < ApplicationRecord
  has_many :orders
  has_many :reviews
end
