FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { Faker::Internet.email }
    password              { '000aaa' }
    password_confirmation { password }
    last_name             { '山だ' }
    first_name            { '太ろう' }
    last_name_kana        { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    birthday              { '2001/1/1' }
  end
end
