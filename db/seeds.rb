
2.times do
  d = Diary.create({ title: Faker::Name.name, kind: rand(1..2), expiration: Faker::Time.between(from: 2.days.ago, to: Date.today + 7.days) })
  3.times do
    d.notes.create({ text: Faker::Lorem.paragraph })
  end
end

2.times do
  d = Diary.create({ title: Faker::Name.name, kind: rand(1..2), expiration: DateTime.now + 10.minutes })
  3.times do
    d.notes.create({ text: Faker::Lorem.paragraph })
  end
end