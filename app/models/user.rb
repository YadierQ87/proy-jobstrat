class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :authorizations
  validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessor :email, :password, :password_confirmation

  def self.create_from_hash!(hash)
    create(:name => hash['user_info']['name'])
  end


end
