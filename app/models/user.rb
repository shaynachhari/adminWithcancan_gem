class User < ApplicationRecord
    has_secure_password
    # belongs_to :role

    # def assign_role
    # self.role = Role.find_by name: 'Regular' if role.nil?
    # end

#     role = %w{super_admin admin}

#    def admin?
#    role == 'Admin'
#    end

#     def super_admin?
#    role == 'super_admin'
#    end
end
