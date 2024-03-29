class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable# :omniauthable

  has_many :user_roles
  has_many :roles, through: :user_roles

  def is_admin?
    roles.map(&:name).include?('admin')
  end

end
