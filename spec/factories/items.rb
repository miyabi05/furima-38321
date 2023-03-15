FactoryBot.define do
  factory :item do
    items_name         { Faker::Lorem.words }
    explain            { Faker::Lorem.sentence }
    price              { Faker::Number.between(from: 300, to: 9_999_999) }
    category_id        { Faker::Number.within(range: 2..12) }
    postage_id         { Faker::Number.within(range: 2..3) }
    state_id           { Faker::Number.within(range: 2..7) }
    shipping_date_id   { Faker::Number.within(range: 2..4) }
    region_id          { Faker::Number.within(range: 2..48) }
    association :user
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
