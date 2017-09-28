class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #,:confirmable, :lockable
  belongs_to :employee ,optional: true ,required: false
  belongs_to :company ,optional: true ,required: false
end
