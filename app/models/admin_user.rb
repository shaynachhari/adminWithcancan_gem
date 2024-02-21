class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  role = %w{super_admin admin}

   def admin?
   role == 'admin'
   end

    def super_admin?
   role == 'super_admin'
   end
end
