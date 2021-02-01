require 'rails_helper'

feature 'Admin generates coupons' do
    scenario 'of a promotion' do
        Promotion.create!(name: 'Natal', description: 'Promoção de Natal',
            code: 'NATAL10', discount_rate: 10, coupon_quantity: 100,
            expiration_date: '22/12/2033')
        Promotion.create!(name: 'Cyber Monday', coupon_quantity: 100,
            description: 'Promoção de Cyber Monday',
            code: 'CYBER15', discount_rate: 15,
            expiration_date: '22/12/2033')




    end
end
