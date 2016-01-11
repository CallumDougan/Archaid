User.delete_all

User.create!([
  {name: "Barry", role: "admin", email: "barry@barry.com", password: 'password', encrypted_password: "$2a$10$1sj5r.PkT93WZ2dUXekrlOnIEkan/VpWxBxhQlk4ZP.21rxx.cKOq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {name: "Billy", role: "user", email: "billy@billy.com", password: 'password', encrypted_password: "$2a$10$WfI73gUgqi8KJP6LWfd4uOETwTjN4JyUMf7Ydnrqb8Mq4QhaDVF1W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])

Arcade.delete_all

Arcade.create!([
  {game_1_id: 1, game_2_id: 2}
])

Coinflip.delete_all

Coinflip.create!([
  {arcade_id: 1, name: "coinflip"}
])

Match.delete_all

Match.create!([
  {user_1_id: 1, user_2_id: 2, game_id: nil, arcade_id: 1, result: nil, game_state: nil}
])

Xo.delete_all

Xo.create!([
  {arcade_id: 1, name: "xo"}
])
