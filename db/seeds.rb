User.create!([
  {email: "naveenreddyin@gmail.com", encrypted_password: "$2a$10$Vw8.plzEFXJZ6G/FIMPyaeDlDmIgNxdSvVtKQGMzcn5pTm5XoMsGS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-03-21 12:39:10", last_sign_in_at: "2016-03-21 12:39:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Role.create!([
  {name: "admin"},
  {name: "flyer"},
  {name: "normal"}
])
