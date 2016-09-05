FactoryGirl.define do
  factory :user do
    full_name { FFaker::Name.name }
    phone { "7#{FFaker.numerify('##########')}" }
    email { FFaker::Internet.email }

    trait :invalid do
      full_name nil
    end
  end
end
