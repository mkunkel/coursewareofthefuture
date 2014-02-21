Fabricator(:student) do
  name { Faker::Name.name }
  email{ Faker::Internet.email }
  password "password"
  password_confirmation "password"
  confirmed_at Time.now
end

Fabricator(:unconfirmed_student, from: :student) do
  confirmed_at nil
end