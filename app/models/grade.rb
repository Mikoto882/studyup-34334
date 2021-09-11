class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '学年を選択して下さい' },
    { id: 2, name: '中学1年生' },
    { id: 3, name: '中学2年生' },
    { id: 4, name: '中学3年生' },
    { id: 5, name: '高校1年生' },
    { id: 6, name: '高校2年生' },
    { id: 7, name: '高校3年生' },
    { id: 8, name: '大学1回生' },
    { id: 9, name: '大学2回生' },
    { id: 10, name: '大学3回生' },
    { id: 11, name: '大学4回生' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users

  end