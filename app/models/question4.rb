class Question4 < ActiveHash::Base
  self.data = [
    {id: 1, text: 'とても高い'}, {id: 2, text: 'やや高い'}, {id: 3, text: 'どちらとも言えない'},
    {id: 4, text: 'やや低い'},{id: 5, text: 'とても低い'},
]
end