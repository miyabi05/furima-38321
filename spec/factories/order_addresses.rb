FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    region_id { 1 }
    city { '東京都' }
    address { '1-1' }
    building_name { '東京ハイツ' }
    token { 'tok_abcdefghijk00000000000000000' }
    phone_number { '09012341234' }
    item_id { '1' }
    user_id { '1' }
  end
end
