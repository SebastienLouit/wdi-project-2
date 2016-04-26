class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, <:recoverable

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :meals
  has_many :servings, through: :meals
  has_many :orders_as_sender, foreign_key: "sender_id", class_name: "Order"
  has_many :orders_as_receiver, foreign_key: "receiver_id", class_name: "Order"

  acts_as_commentable
end
