class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze, message: "には英字と数字の両方を含めて設定してください"}
    validates :nickname
    validates :old, format: {with: /\A(?=.*?[\d])[\d]+\z/i.freeze, message: "には数字のみ入力して下さい"}
    validates :grade_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :birthday
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grade

end
