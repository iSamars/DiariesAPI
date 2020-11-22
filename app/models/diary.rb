class Diary < ApplicationRecord
  has_many :notes
  enum kind: { public_type: 1, private_type: 2 }
end
