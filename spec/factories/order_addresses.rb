FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    region_id { Faker::Number.within(range: 2..48) }
    city { '東京都' }
    address { '1-1' }
    building_name { '東京ハイツ' }
    token { 'tok_abcdefghijk00000000000000000' }
    phone_number { '09012341234' }
  end
end
