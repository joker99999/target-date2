class Question2 < ActiveHash::Base
  self.data = [
    {id: 1, anser: '2時間〜4時間'}, {id: 2, anser: '4時間〜6時間'}, {id: 3, anser: '6時間〜8時間'},
    {id: 4, anser: '8時間〜10時間'},{id: 5, anser: '4時間〜6時間'},
]
  include ActiveHash::Associations
  has_many :healths
end