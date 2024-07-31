class Order < ApplicationRecord
  belongs_to :customer
  has_many :books, through: :bookorders

  enum state: { shipped: 0, being_packed: 1, complete: 2, cancelled: 3 }

end
