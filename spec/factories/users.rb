FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
    last_name             {'yamada'}
    first_name            {'taro'}
    last_name_kana        {'ヤマダ'}
    first_name_kana       {'タロウ'}
    birthday              {'2001/1/1'}
  end
end