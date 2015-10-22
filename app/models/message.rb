class Message < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
    validates :name , length: {minimum: 1 , maximum: 20 , too_short: '名前を入力してください' , too_long: '名前が長すぎます' } , presence: true
    # 内容は必須入力かつ2文字以上30文字以下
    validates :body , length: {minimum: 1 , maximum: 30 , too_short: '内容を入力してください' , too_long: 'もっと簡潔に述べてください' } , presence: true
end
