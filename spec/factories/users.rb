FactoryBot.define do
  factory :user do
    nickname { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    password { 'test1234' }
    password_confirmation { password }
    last_name { '鈴木' }
    first_name { '太郎' }
    last_name_kana { 'スズキ' }
    first_name_kana { 'タロウ' }
    date_of_birth { '1930-01-01' }
  end
end