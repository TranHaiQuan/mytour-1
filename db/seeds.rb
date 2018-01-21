5.times do |n|
  name = "user#{n+1}-#{Faker::Name.name}"
  email = "user#{n+1}@gmail.com"
  phone = Faker::PhoneNumber.phone_number
  address = Faker::Address.street_name
  if n%2 == 1
    sex = 0
  else
    sex = 1
  end
  admin = false;
  password = "147852369"
  password_confirmation = "147852369"
  User.create!(name: name, email: email, phone: phone, address: address, sex: sex, admin: admin, password: password,
    password_confirmation: password_confirmation)
end
10.times do |n|
  name = "admin#{n+1}-#{Faker::Name.name}"
  email = "admin#{n+1}@gmail.com"
  phone = Faker::PhoneNumber.phone_number
  address = Faker::Address.street_name
  if n%2 == 1
    sex = 0
  else
    sex = 1
  end
  admin = true;
  password = "147852369"
  password_confirmation = "147852369"
  User.create!(name: name, email: email, phone: phone, address: address, sex: sex, admin: admin, password: password,
    password_confirmation: password_confirmation)
end

User.create! name: "admin", email: "admin@123.com",
  password: "12341234", password_confirmation: "12341234", admin: true,
  phone: "097211284", sex: 0, address: "Ha Noi"
User.create! name: "user", email: "user@123.com",
  password: "12341234", password_confirmation: "12341234", admin: true,
  phone: "097211284", sex: 0, address: "Ha Noi"

Tour.create! ([
  {user_id: 1, tour_name: "Tour Đà Lạt 4N3D: Thác Giang Điền - Đà Lạt", destination: "Đà Lạt", number_day: 4, number_night: 3, pickup_place: "Đà Lạt", price: 2400000, image: "https://cms.hostelworld.com/hwblog/wp-content/uploads/sites/2/2017/08/girlgoneabroad.jpg"
  },
  {user_id: 1, tour_name: "Tour Phan Thiết - Đà Lạt 4N3D",
    destination: "Đà Lạt", number_day: 4, number_night: 3, pickup_place: "Đà Lạt", price: 3600000, image: "https://cms.hostelworld.com/hwblog/wp-content/uploads/sites/2/2017/09/Matt-Wild-SF.jpg"
  },
  {user_id: 1, tour_name: "Tour Phú Quốc 3N2D: Đảo Ngọc Phú Quốc",
    destination: "Phú Quốc", number_day: 3, number_night: 2, pickup_place:
    "Phú Quốc", price: 2600000, image: "https://neoreach.com/wp-content/uploads/2016/07/140911_BURKARD_83234-XL-1-1.jpg"
  },
  {user_id: 1, tour_name: "Tour Phú Quốc 3N2D: Hàm Ninh - Bãi Sao - Dinh Cậu",
    destination: "Phú Quốc", number_day: 3, number_night: 2, pickup_place: "Phú Quốc", price: 3000000, image: "http://vietnamconstruction.vn/wp-content/uploads/2016/08/kurumba-beaches-800x445.jpg"
  },
  {user_id: 1, tour_name: "Tour Nha Trang 3N2D: Nha Trang - Bình Ba",
    destination: "Nha Trang", number_day: 3, number_night: 2, pickup_place: "Nha Trang", price: 2200000, image: "https://neoreach.com/wp-content/uploads/2016/07/140911_BURKARD_83234-XL-1-1.jpg"
  },
  {user_id: 1, tour_name: "Tour Nha Trang - Đà Lạt 4N4Đ",
    destination: "Nha Trang", number_day: 4, number_night: 4, pickup_place:
    "Nha Trang", price: 3200000, image: "http://orangetravel.vn/wp-content/uploads/2016/06/79_big.jpg"
  },
  {user_id: 1, tour_name: "Tour Đà Lạt 4N3D: Thác Giang Điền - Đà Lạt", destination: "Đà Lạt", number_day: 4, number_night: 3, pickup_place: "Đà Lạt", price: 2900000, image: "http://orangetravel.vn/wp-content/uploads/2016/06/79_big.jpg"
  },
  {user_id: 1, tour_name: "Tour Phan Thiết - Đà Lạt 4N3D",
    destination: "Đà Lạt", number_day: 4, number_night: 3, pickup_place: "Đà Lạt", price: 3600000, image: "http://file.alotrip.com/photo/phan-thiet-mui-ne/sightseeing/bau-trang-lake/sand-dunes-in-bau-trang-787.jpeg"
  },
  {user_id: 1, tour_name: "Tour Phú Quốc 3N2D: Đảo Ngọc Phú Quốc",
    destination: "Phú Quốc", number_day: 3, number_night: 2, pickup_place:
    "Phú Quốc", price: 2100000, image: "https://cms.hostelworld.com/hwblog/wp-content/uploads/sites/2/2017/09/offthepath.jpg"
  },
  {user_id: 1, tour_name: "Tour Phú Quốc 3N2D: Hàm Ninh - Bãi Sao - Dinh Cậu",
    destination: "Phú Quốc", number_day: 3, number_night: 2, pickup_place: "Phú Quốc", price: 2200000, image: "http://vietnamconstruction.vn/wp-content/uploads/2016/08/kurumba-beaches-800x445.jpg"
  },
  {user_id: 1, tour_name: "Tour Nha Trang 3N2D: Nha Trang - Bình Ba",
    destination: "Nha Trang", number_day: 3, number_night: 2, pickup_place: "Nha Trang", price: 3800000, image: "https://cms.hostelworld.com/hwblog/wp-content/uploads/sites/2/2017/09/oneworldjustgo-1112-1170x780.jpg"
  },
  {user_id: 1, tour_name: "Tour Nha Trang - Đà Lạt 4N4Đ",
    destination: "Nha Trang", number_day: 4, number_night: 4, pickup_place:
    "Nha Trang", price: 2400000, image: "https://cms.hostelworld.com/hwblog/wp-content/uploads/sites/2/2017/09/HW2-Sophie-Piearcey.jpg"
  }
])

Plan.create! ([
  {
    tour_id: 1, description: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
      Buổi sáng: Xe và hướng dẫn viên đưa du khách đến Đà Lạt. Quý khách ghé
      dùng điểm tâm sáng và tham quan:
      - Thác Giang Điền: một quần thể thắng cảnh thiên nhiên hài hòa, du khách
      sẽ thỏa chí khám phá và hòa mình vào cảnh sắc hoang dã nơi đây. Buổi sáng:
      Đoàn đến thành phố Bảo Lộc - xứ sở của trà và cà phê, Quý khách dùng cơm
      trưa. Buổi chiều: Đến Đà Lạt, về khách sạn Quý khách nhận phòng. Sau đó,
      Quý khách dùng cơm tối và tự do đi dạo Đà Lạt về đêm, thưởng thức các món
      ngon ở phố núi, ngắm cảnh Hồ Xuân Hương, nghỉ đêm tại Đà Lạt."
  },
  {
    tour_id: 2, description: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  },
  {
    tour_id: 3, description: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
      Buổi sáng: Xe và hướng dẫn viên đưa du khách đến Đà Lạt. Quý khách ghé
      dùng điểm tâm sáng và tham quan:
      - Thác Giang Điền: một quần thể thắng cảnh thiên nhiên hài hòa, du khách
      sẽ thỏa chí khám phá và hòa mình vào cảnh sắc hoang dã nơi đây. Buổi sáng:
      Đoàn đến thành phố Bảo Lộc - xứ sở của trà và cà phê, Quý khách dùng cơm
      trưa. Buổi chiều: Đến Đà Lạt, về khách sạn Quý khách nhận phòng. Sau đó,
      Quý khách dùng cơm tối và tự do đi dạo Đà Lạt về đêm, thưởng thức các món
      ngon ở phố núi, ngắm cảnh Hồ Xuân Hương, nghỉ đêm tại Đà Lạt."
  },
  {
    tour_id: 4, description: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  },
  {
    tour_id: 5, description: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
      Buổi sáng: Xe và hướng dẫn viên đưa du khách đến Đà Lạt. Quý khách ghé
      dùng điểm tâm sáng và tham quan:
      - Thác Giang Điền: một quần thể thắng cảnh thiên nhiên hài hòa, du khách
      sẽ thỏa chí khám phá và hòa mình vào cảnh sắc hoang dã nơi đây. Buổi sáng:
      Đoàn đến thành phố Bảo Lộc - xứ sở của trà và cà phê, Quý khách dùng cơm
      trưa. Buổi chiều: Đến Đà Lạt, về khách sạn Quý khách nhận phòng. Sau đó,
      Quý khách dùng cơm tối và tự do đi dạo Đà Lạt về đêm, thưởng thức các món
      ngon ở phố núi, ngắm cảnh Hồ Xuân Hương, nghỉ đêm tại Đà Lạt."
  },
  {
    tour_id: 6, description: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  },
  {
    tour_id: 7, description: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
      Buổi sáng: Xe và hướng dẫn viên đưa du khách đến Đà Lạt. Quý khách ghé
      dùng điểm tâm sáng và tham quan:
      - Thác Giang Điền: một quần thể thắng cảnh thiên nhiên hài hòa, du khách
      sẽ thỏa chí khám phá và hòa mình vào cảnh sắc hoang dã nơi đây. Buổi sáng:
      Đoàn đến thành phố Bảo Lộc - xứ sở của trà và cà phê, Quý khách dùng cơm
      trưa. Buổi chiều: Đến Đà Lạt, về khách sạn Quý khách nhận phòng. Sau đó,
      Quý khách dùng cơm tối và tự do đi dạo Đà Lạt về đêm, thưởng thức các món
      ngon ở phố núi, ngắm cảnh Hồ Xuân Hương, nghỉ đêm tại Đà Lạt."
  },
  {
    tour_id: 8, description: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  },
  {
    tour_id: 9, description: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
      Buổi sáng: Xe và hướng dẫn viên đưa du khách đến Đà Lạt. Quý khách ghé
      dùng điểm tâm sáng và tham quan:
      - Thác Giang Điền: một quần thể thắng cảnh thiên nhiên hài hòa, du khách
      sẽ thỏa chí khám phá và hòa mình vào cảnh sắc hoang dã nơi đây. Buổi sáng:
      Đoàn đến thành phố Bảo Lộc - xứ sở của trà và cà phê, Quý khách dùng cơm
      trưa. Buổi chiều: Đến Đà Lạt, về khách sạn Quý khách nhận phòng. Sau đó,
      Quý khách dùng cơm tối và tự do đi dạo Đà Lạt về đêm, thưởng thức các món
      ngon ở phố núi, ngắm cảnh Hồ Xuân Hương, nghỉ đêm tại Đà Lạt."
  },
  {
    tour_id: 10, description: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  },
  {
    tour_id: 11, description: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
      Buổi sáng: Xe và hướng dẫn viên đưa du khách đến Đà Lạt. Quý khách ghé
      dùng điểm tâm sáng và tham quan:
      - Thác Giang Điền: một quần thể thắng cảnh thiên nhiên hài hòa, du khách
      sẽ thỏa chí khám phá và hòa mình vào cảnh sắc hoang dã nơi đây. Buổi sáng:
      Đoàn đến thành phố Bảo Lộc - xứ sở của trà và cà phê, Quý khách dùng cơm
      trưa. Buổi chiều: Đến Đà Lạt, về khách sạn Quý khách nhận phòng. Sau đó,
      Quý khách dùng cơm tối và tự do đi dạo Đà Lạt về đêm, thưởng thức các món
      ngon ở phố núi, ngắm cảnh Hồ Xuân Hương, nghỉ đêm tại Đà Lạt."
  },
  {
    tour_id: 12, description: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  }
])
