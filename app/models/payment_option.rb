class PaymentOption < ActiveRecord::Base
  has_many :orders
  belongs_to :payment
end
