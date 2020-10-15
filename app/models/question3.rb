class Question3 < ActiveHash::Base
  self.data = [
    {id: 1, text: 'とても良い'}, {id: 2, text: 'やや良い'}, {id: 3, text: 'どちらとも言えない'},
    {id: 4, text: 'やや悪い'},{id: 5, text: 'とても悪い'},
]
  include ActiveHash::Associations
  has_many :healths
end