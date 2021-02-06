class Promotion < ApplicationRecord
    has_many :coupons
    belongs_to :user

    validates :name, presence: true
    validates :code, presence: true
    validates :code, uniqueness: true
    validates :discount_rate, presence: true
    validates :coupon_quantity, presence: true
    validates :expiration_date, presence: true   
    
    def generate_coupons!
        Coupon.transaction do
            (1..coupon_quantity).each do |number|
                coupons.create!(code: "#{code}-#{'%04d' % number}")
            end
        end
    end
end