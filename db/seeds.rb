# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# 役職の作成
# roles = ['社長', '課長', 'メンバー']
# roles.each do |role_name|
#   Role.find_or_create_by(name: role_name)
# end


# # 役職の取得
# president_role = Role.find_by(name: '社長')
# manager_role = Role.find_by(name: '課長')
# member_role = Role.find_by(name: 'メンバー')

# # 社長（1人）
# User.create(email: 'president@example.com', password: 'password123').roles << president_role

# # 課長（2人）
# 2.times do |i|
#   User.create(email: "manager#{i+1}@example.com", password: 'password123').roles << manager_role
# end

# # メンバー（7人）
# 7.times do |i|
#   User.create(email: "member#{i+1}@example.com", password: 'password123').roles << member_role
# end


# ダミーユーザーの作成
user = User.create(email: 'dummy@example.com', password: 'password123')

# 役職の取得
manager_role = Role.find_by(name: '課長')
member_role = Role.find_by(name: 'メンバー')

# ユーザーに役職を割り当て
user.roles << manager_role
user.roles << member_role
