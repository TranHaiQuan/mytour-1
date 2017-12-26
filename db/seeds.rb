User.delete_all
User.create! name: "admin", email: "sote1412@gmail.com",
  sex: 0, password: "kaito123", password_confirmation: "kaito123",
  phone: "0941360210", address: "Ha Noi", role: 1
User.create! name: "admin1", email: "sote142@gmail.com",
  sex: 0, password: "kaito123", password_confirmation: "kaito123",
  phone: "0941360210", address: "Ha Noi", role: 0
User.create! name: "admin2", email: "sote112@gmail.com",
  sex: 0, password: "kaito123", password_confirmation: "kaito123",
  phone: "0941360210", address: "Ha Noi", role: 2

Tour.create! ([
  {user_id: 1, tour_name: "Tour Đà Lạt 4N3D: Thác Giang Điền - Đà Lạt",
    destination: "Đà Lạt", number_day: 4, number_night: 3, pick_up: "Đà Lạt",
    price: 2600000, image: "http://orangetravel.vn/wp-content/uploads/2016/06/79_big.jpg"
  },
  {user_id: 1, tour_name: "Tour Phan Thiết - Đà Lạt 4N3D",
    destination: "Đà Lạt", number_day: 4, number_night: 3, pick_up: "Đà Lạt",
    price: 3600000, image: "http://file.alotrip.com/photo/phan-thiet-mui-ne/sightseeing/bau-trang-lake/sand-dunes-in-bau-trang-787.jpeg"
  },
  {user_id: 1, tour_name: "Tour Phú Quốc 3N2D: Đảo Ngọc Phú Quốc",
    destination: "Phú Quốc", number_day: 3, number_night: 2, pick_up: "Phú Quốc",
    price: 2100000,image: "http://dulichdaophuquoc.org/wp-content/uploads/2015/01/ve-dep-dao-phu-quoc.jpg"
  },
  {user_id: 1, tour_name: "Tour Phú Quốc 3N2D: Hàm Ninh - Bãi Sao - Dinh Cậu",
    destination: "Phú Quốc", number_day: 3, number_night: 2, pick_up: "Phú Quốc",
    price: 2100000, image: "http://vietnamconstruction.vn/wp-content/uploads/2016/08/kurumba-beaches-800x445.jpg"
  },
  {user_id: 1, tour_name: "Tour Nha Trang 3N2D: Nha Trang - Bình Ba",
    destination: "Nha Trang", number_day: 3, number_night: 2, pick_up: "Nha Trang",
    price: 2800000, image: "https://cdn2.ivivu.com/2014/12/02/18/nha-trang-750x390.jpg"
  },
  {user_id: 1, tour_name: "Tour Nha Trang - Đà Lạt 4N4Đ",
    destination: "Nha Trang", number_day: 4, number_night: 4, pick_up: "Nha Trang",
    price: 2800000, image: "https://atoztravel.vn/wp-content/uploads/2016/03/da-lat-1.jpg"
  }
])

Plan.create! ([
  {
    tour_id: 1, plan_des: "NGÀY 1: TP.HỒ CHÍ MINH - ĐÀ LẠT (ĂN SÁNG, TRƯA,CHIỀU)
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
    tour_id: 3, plan_des: "NGÀY 01: TP.HỒ CHÍ MINH – PHÚ QUỐC (ĂN TRƯA, CHIỀU)
    Buổi sáng: Xe và hướng dẫn viên đón quý khách tại sân bay Phú Quốc theo chuyến
    bay của quý khách, đoàn dùng cơm trưa,nhận phòng khách sạn.
    Buổi chiều: Sau đó, đoàn Khởi hành tham quan phía Đông đảo:Làng Chài Hàm
    Ninh: Nơi đây phong phú nhiều về các loại hải sản tươi sống như ghẹ, cua,
    ốc nhảy, bào ngư, cá ngựa,…"
  }
])

Sevice_attach.create! ([
  {
    tour_id: 1, is_insurrance: true, ct_insurrance: "Bảo hiểm", is_meal: true, ct_meal: "Bữa ăn", is_tour_guide: true, ct_tour_guide:
      "Hướng dẫn viên", is_entrance_tickets: true, ct_entrance_tickets:
      "Vé tham quan", is_shuttle_car: true, ct_shuttle_car: "Xe đưa đón"
  },
  {
    tour_id: 3, is_insurrance: true, ct_insurrance: "Bảo hiểm", is_meal: true, ct_meal: "Bữa ăn", is_tour_guide: true, ct_tour_guide:
      "Hướng dẫn viên", is_entrance_tickets: true, ct_entrance_tickets:
      "Vé tham quan", is_shuttle_car: true, ct_shuttle_car: "Xe đưa đón"
  }
])

Stipulate.create! ([
  {
    tour_id: 1, note: "- Trình tự chương trình có thể thay đổi nhưng số lượng
    chương trình vẫn không thay đổi.
    - Quý khách có mặt tại điểm đón trước 15 phút. Du khách đến trễ khi xe đã
    khởi hành hoặc hủy tour không báo trước vui lòng chịu phí như ‘hủy vé ngay
    ngày khởi hành’ - Quý khách mang theo giấy CMND hoặc Hộ chiếu (Bản chính),
    nên mang theo hành lý gọn nhẹ, không mang valy lớn. - Trẻ em phải đi cùng
    cha mẹ hoặc có giấy cam kết đi tour cùng người thân, khi đi phải mang theo
    giấy khai sinh hoặc hộ chiếu. - Quý khách tự quản lý tiền bạc tư trang trong
    qua trình tham quan du lịch. - Khi đăng ký, quý khách vui lòng cung cấp đầy
    đủ Họ tên và năm sinh. - Đối với du khách là Việt kiều, Quốc tế nhập cảnh Việt
    Nam bằng visa rời, vui lòng mang theo tờ khai hải quan và visa khi đi tour.
    - Chương trình tour được coi là biên bản ghi nhớ giữa khách hàng và Ivivu.
    Những thắc mắc, khiếu nại sẽ dựa vào những quy định trong chương trình và phiếu
    thu để giải quyết.", cancel_tour: "Điều kiện hủy tour (ngày thường) - Sau khi
    đăng ký huỷ tour mất 10 phần trăm giá tour - Hủy tour 10 ngày trước ngày khởi
    hành chịu phí 30 phần trăm giá tour (Không tính ngày lễ và chủ nhật). Phí hủy
    vé máy bay theo qui định của hãng. - Hủy tour 8 ngày trước ngày khởi hành chịu
    phí 50 phần trăm giá tour (Không tính ngày lễ và chủ nhật).Phí hủy vé máy bay
    theo qui định của hãng. - Hủy tour 5 ngày trước ngày khởi hành chịu phí 100 phần
    trăm giá tour (Không tính ngày lễ và chủ nhật).Phí hủy vé máy bay theo qui định
    của hãng. - Sau khi hủy tour, du khách vui lòng đến công ty nhận tiền trong vòng
    2 tuần kể từ ngày đăng ký hủytour. Chúng tôi chỉ thanh toán trong thời gian 14
    ngày nói trên. ", change_tour: "Điều kiện dời ngày khởi hành (chỉ được dời 1 lần)
    - Dời trước 10 ngày so với ngày khởi hành: phí dời 0 phần trăm tiền tour (Không
    tính ngày lễ và chủ nhật). Phí dời  vé máy bay theo qui định của hãng.- Trước 6 so
    với ngày khởi hành: phí dời 20 phần trăm tiền tour (Không tính ngày lễ và chủ nhật).
    Phí dời vé máy bay theo qui định của hãng. - Trước 4 so với ngày khởi hành: phí dời
    40 phần trăm tiền tour (Không tính ngày lễ và chủ nhật). Phí dời vé máy bay theo qui
    định của hãng. - Sau thời gian trên: phí dời 100 phần trăm tiền tour (Không tính ngày
    lễ và chủ nhật).Phí dời vé máy bay theo qui định của hãng."
  }
])
