class Payment < ActiveRecord::Base
  has_many :order
  
  validates :card_number, presence: true
  validates :card_holder_name, presence: true
  validates :card_expiration_month, presence: true, numericality: {greater_than: 0, less_than: 13}
  validates :card_expiration_year, presence: true, numericality: {greater_than: 0, less_than: 30}
  validates :card_cvv, presence: true, numericality: {greater_than: 0, less_than: 1000}
  validates :payment_amount, presence: true, numericality: {greater_than: 0}  
end
