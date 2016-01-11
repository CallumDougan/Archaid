User.create!([
  {name: "Barry", role: "admin", email: "barry@barry.com", encrypted_password: "$2a$10$1sj5r.PkT93WZ2dUXekrlOnIEkan/VpWxBxhQlk4ZP.21rxx.cKOq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
Arcade.create!([
  {game_1_id: nil, game_2_id: nil},
  {game_1_id: nil, game_2_id: nil}
])
Coinflip.create!([
  {game_state: nil, arcade_id: nil}
])
Xo.create!([
  {game_state: nil, arcade_id: nil}
])
