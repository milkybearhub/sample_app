class Inquiry
  include ActiveModel::Model
  
  attr_accessor :name, :email, :message

  validates :name, presence: true, length: { maximum: 50 }
=begin
  【VALID_EMAIL_REGEX】
  1.アカウント名は、半角英数字、「_」、「+」、「-」、「.」のいずれかを
    少なくとも１文字以上繰り返す
  2.アカウント名とドメイン名の間に「@」必須
  3.ドメイン名は、半角英小文字、数字、「-」、「.」のいずれかを少なくとも
    1文字以上繰り返す
  4.「〜.jp」等で終わる
=end
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true
end
