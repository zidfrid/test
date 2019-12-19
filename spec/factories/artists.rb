FactoryBot.define do
  factory :artist do
    name { Faker::Music.band }
    image { Faker::File.file_name }
    popularity { rand(0..200) }
    spotify_url { Faker::Internet.url }
    spotify_id  { Faker::Internet.uuid }
  end
end
