<%-- 
    Document   : index
    Created on : Jun 8, 2023, 5:56:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>DentCare - Dental Clinic Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
        href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@100;300;400;500;800&family=Poppins:wght@400;500;600;700&display=swap"
        rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
        <link href="lib/twentytwenty/twentytwenty.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

        <jsp:include page="headerUser.jsp"></jsp:include>
        <div class="modal fade" id="searchModal" tabindex="-1">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                    <div class="modal-header border-0">
                        <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-flex align-items-center justify-content-center">
                        <div class="input-group" style="max-width: 600px;">
                            <input type="text" class="form-control bg-transparent border-primary p-3"
                                   placeholder="Type search keyword">
                            <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Full Screen Search End -->


        <!-- Carousel Start -->
        <div class="container-fluid p-0">
            <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="img/carousel-1.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Giữ Răng Khỏe Mạnh</h5>
                                <h1 class="display-1 text-white mb-md-4 animated zoomIn">Thực hiện điều trị nha khoa chất
                                    lượng tốt nhất</h1>
                                <a href="appointment.html"
                                   class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Cuộc hẹn</a>
                                <a href="" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Liên hệ chúng
                                    tôi</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-2.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Giữ Răng Khỏe Mạnh</h5>
                                <h1 class="display-1 text-white mb-md-4 animated zoomIn">Thực hiện điều trị nha khoa chất
                                    lượng tốt nhất</h1>
                                <a href="appointment.html"
                                   class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Cuộc hẹn</a>
                                <a href="" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Liên hệ chúng
                                    tôi</a>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->


        <!-- Banner Start -->
        <div class="container-fluid banner mb-5">
            <div class="container">
                <div class="row gx-0">
                    <div class="col-lg-4 wow zoomIn" data-wow-delay="0.1s">
                        <div class="bg-primary d-flex flex-column p-5" style="height: 300px;">
                            <h3 class="text-white mb-3">Giờ mở cửa</h3>
                            <div class="d-flex justify-content-between text-white mb-3">
                                <h6 class="text-white mb-0">Thứ hai - Thứ sáu</h6>
                                <p class="mb-0"> 8:00am - 9:00pm</p>
                            </div>
                            <div class="d-flex justify-content-between text-white mb-3">
                                <h6 class="text-white mb-0">Thứ bảy</h6>
                                <p class="mb-0"> 8:00am - 7:00pm</p>
                            </div>
                            <div class="d-flex justify-content-between text-white mb-3">
                                <h6 class="text-white mb-0">Chủ nhật</h6>
                                <p class="mb-0"> 8:00am - 5:00pm</p>
                            </div>
                            <a class="btn btn-light" href="">Cuộc hẹn</a>
                        </div>
                    </div>
                    <div class="col-lg-4 wow zoomIn" data-wow-delay="0.3s">
                        <div class="bg-dark d-flex flex-column p-5" style="height: 300px;">
                            <h3 class="text-white mb-3">Tìm kiếm nha sĩ</h3>
                            <div class="date mb-3" id="date" data-target-input="nearest">
                                <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                       placeholder="Appointment Date" data-target="#date" data-toggle="datetimepicker"
                                       style="height: 40px;">
                            </div>
                            <select class="form-select bg-light border-0 mb-3" style="height: 40px;">
                                <option selected>Lựa chọn dịch vụ</option>
                                <option value="1">Dịch vụ 1</option>
                                <option value="2">Dịch vụ 2</option>
                                <option value="3">Dịch vụ 3</option>
                            </select>
                            <a class="btn btn-light" href="">Search Doctor</a>
                        </div>
                    </div>
                    <div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
                        <div class="bg-secondary d-flex flex-column p-5" style="height: 300px;">
                            <h3 class="text-white mb-3">Tạo cuộc hẹn</h3>
                            <p class="text-white">Nha khoa DentCare rất hân hạnh khi được phục vụ quý khách</p>
                            <h2 class="text-white mb-0">+84 374 312 384</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Start -->


        <!-- About Start -->
        <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-7">
                        <div class="section-title mb-4">
                            <h5 class="position-relative d-inline-block text-primary text-uppercase">Về Chúng Tôi</h5>
                            <h1 class="display-5 mb-0">Phòng khám nha khoa tốt nhất thế giới mà bạn có thể tin tưởng</h1>
                        </div>
                        <h4 class="text-body fst-italic mb-4">Nha sĩ luôn rất thân thiện, chu đáo và tận tình giải đáp mọi
                            thắc mắc của khách hàng.</h4>
                        <p class="mb-4">Khách hàng sẽ cảm thấy rất yên tâm và tin tưởng khi được điều trị tại phòng khám của
                            chúng tôi. Các thiết bị và trang thiết bị y tế tại đây cũng được cập nhật và tiên tiến, giúp cho
                            quá trình điều trị của khách hàng diễn ra thuận lợi và hiệu quả hơn.</p>
                        <div class="row g-3">
                            <div class="col-sm-6 wow zoomIn" data-wow-delay="0.3s">
                                <h5 class="mb-3"><i class="fa fa-check-circle text-primary me-3"></i>Giành nhiều giải thưởng
                                </h5>
                                <h5 class="mb-3"><i class="fa fa-check-circle text-primary me-3"></i>Đội ngũ nhân viên
                                    chuyên nghiệp</h5>
                            </div>
                            <div class="col-sm-6 wow zoomIn" data-wow-delay="0.6s">
                                <h5 class="mb-3"><i class="fa fa-check-circle text-primary me-3"></i>Mở cửa 24/7</h5>
                                <h5 class="mb-3"><i class="fa fa-check-circle text-primary me-3"></i>Giá cả hợp lý</h5>
                            </div>
                        </div>
                        <a href="appointment.html" class="btn btn-primary py-3 px-5 mt-4 wow zoomIn"
                           data-wow-delay="0.6s">Đặt lịch hẹn</a>
                    </div>
                    <div class="col-lg-5" style="min-height: 500px;">
                        <div class="position-relative h-100">
                            <img class="position-absolute w-100 h-100 rounded wow zoomIn" data-wow-delay="0.9s"
                                 src="img/about.jpg" style="object-fit: cover;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Appointment Start -->
        <div class="container-fluid bg-primary bg-appointment mb-5 wow fadeInUp" data-wow-delay="0.1s"
             style="margin-top: 90px;">
            <div class="container">
                <div class="row gx-5">
                    <div class="col-lg-6 py-5">
                        <div class="py-5">
                            <h1 class="display-5 text-white mb-4">Chúng tôi là phòng khám nha khoa được chứng nhận và giành
                                giải thưởng mà bạn có thể tin tưởng</h1>
                            <p class="text-white mb-0">Nha sĩ luôn rất thân thiện, chu đáo và tận tình giải đáp mọi thắc mắc
                                của khách hàng.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="appointment-form h-100 d-flex flex-column justify-content-center text-center p-5 wow zoomIn"
                             data-wow-delay="0.6s">
                            <h1 class="text-white mb-4">Tạo cuộc hẹn</h1>
                            <form>
                                <div class="row g-3">
                                    <div class="col-12 col-sm-6">
                                        <select class="form-select bg-light border-0" style="height: 55px;">
                                            <option selected>Lựa chọn dịch vụ</option>
                                            <option value="1">Dịch vụ 1</option>
                                            <option value="2">Dịch vụ 2</option>
                                            <option value="3">Dịch vụ 3</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <select class="form-select bg-light border-0" style="height: 55px;">
                                            <option selected>Lựa chọn nha sĩ</option>
                                            <option value="1">Nha sĩ 1</option>
                                            <option value="2">Nha sĩ 2</option>
                                            <option value="3">Nha sĩ 3</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control bg-light border-0" placeholder="Họ và Tên"
                                               style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="email" class="form-control bg-light border-0"
                                               placeholder="Email của bạn" style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="date" id="date1" data-target-input="nearest">
                                            <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Ngày hẹn" data-target="#date1" data-toggle="datetimepicker"
                                                   style="height: 55px;">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="time" id="time1" data-target-input="nearest">
                                            <input type="text" class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Thời gian hẹn" data-target="#time1"
                                                   data-toggle="datetimepicker" style="height: 55px;">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <!-- <a href="#addEmployeeModal" class="btn btn-primary py-2 px-4 ms-3" data-toggle="modal">Tạo lịch hẹn</a> -->
                                        <button type="button" class="btn btn-primary py-2 px-4 ms-3" data-bs-toggle="modal"
                                                data-bs-target="#createModal" aria-label="Search">
                                            Tạo lịch hẹn
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->

        <!-- Full Screen Create Start -->
        <div class="modal fade" id="createModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content" style="background: rgba(6, 163, 218, .7);">
                    <div class="modal-body d-flex align-items-center justify-content-center">
                        <div class="input-group" style="max-width: 600px; color: white; font-size: 1.2rem;" >
                            Chúng tôi xin lỗi khi phải thông báo lịch bạn vừa chọn đã trùng. Vui lòng chọn lịch hẹn khác.
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-dialog">
                <div class="modal-content" style="background: rgba(6, 163, 218, .7);">
                    <form action="xemLich" method="post">
                        <div class="modal-header">

                            <h4 class="modal-title" style="color: white;">Thông Tin</h4>
                            <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">


                            <div class="form-group">
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Lựa chọn dịch vụ</option>
                                    <option value="1">Dịch vụ 1</option>
                                    <option value="2">Dịch vụ 2</option>
                                    <option value="3">Dịch vụ 3</option>
                                </select>
                            </div>
                            <br>
                            <div class="form-group">
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Lựa chọn nha sĩ</option>
                                    <option value="1">Nha sĩ 1</option>
                                    <option value="2">Nha sĩ 2</option>
                                    <option value="3">Nha sĩ 3</option>
                                </select>
                            </div>
                            <br>
                            <div class="form-group">

                                <input name="masp" type="text" class="form-control" required placeholder="Họ và Tên">
                            </div>
                            <br>
                            <div class="form-group">

                                <input name="name" type="text" class="form-control" required placeholder="Email của bạn">
                            </div>
                            <div class="form-group">
                                <label style="color: white;">Ngày hẹn</label>
                                <input name="date" type="date" class="form-control" required></input>
                            </div>
                            <div class="form-group">
                                <label style="color: white;">Thời gian hẹn</label>
                                <input type="time" name="txtTime" class="form-control" required></input>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" value="Xem lịch còn trống">
                            <input type="submit" class="btn btn-success" value="Tạo lịch hẹn">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Full Screen Create End -->


        <!-- Service Start -->
        <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row g-5 mb-5">
                    <div class="col-lg-5 wow zoomIn" data-wow-delay="0.3s" style="min-height: 400px;">
                        <div class="twentytwenty-container position-relative h-100 rounded overflow-hidden">
                            <img class="position-absolute w-100 h-100" src="img/before.jpg" style="object-fit: cover;">
                            <img class="position-absolute w-100 h-100" src="img/after.jpg" style="object-fit: cover;">
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="section-title mb-5">
                            <h5 class="position-relative d-inline-block text-primary text-uppercase">Dịch vụ của chúng tôi
                            </h5>
                            <h1 class="display-5 mb-0">Chúng tôi cung cấp dịch vụ nha khoa chất lượng tốt nhất</h1>
                        </div>
                        <div class="row g-5">
                            <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.6s">
                                <div class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="img/service-1.jpg" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">Nhổ răng khôn</h5>
                                </div>
                            </div>
                            <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.9s">
                                <div class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="img/service-2.jpg" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">Bọc răng sứ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-5 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="col-lg-7">
                        <div class="row g-5">
                            <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.3s">
                                <div class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="img/service-3.jpg" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">Điều trị tủy</h5>
                                </div>
                            </div>
                            <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.6s">
                                <div class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="img/service-4.jpg" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">Tẩy trắng răng</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 service-item wow zoomIn" data-wow-delay="0.9s">
                        <div
                            class="position-relative bg-primary rounded h-100 d-flex flex-column align-items-center justify-content-center text-center p-4">
                            <h3 class="text-white mb-3">Tạo cuộc hẹn</h3>
                            <p class="text-white mb-3">Liên hệ chúng tôi qua số điện thoại dưới đây</p>
                            <h2 class="text-white mb-0">+84 374 312 384</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- Offer Start -->
        <div class="container-fluid bg-offer my-5 py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-7 wow zoomIn" data-wow-delay="0.6s">
                        <div class="offer-text text-center rounded p-5">
                            <h1 class="display-5 text-white">Tiết kiệm 30% cho lần khám răng đầu tiên của bạn</h1>
                            <p class="text-white mb-4">Quá trình thực hiện các dịch vụ nha khoa tại Nha Khoa DentCare đều
                                được áp dụng quy trình chuẩn quốc tế, tuân thủ nghiêm ngặt các quy định về điều kiện vô
                                trùng an toàn từ khâu thăm khám, tư vấn, đến điều trị.</p>
                            <a href="appointment.html" class="btn btn-dark py-3 px-5 me-3">Cuộc hẹn</a>
                            <a href="" class="btn btn-light py-3 px-5">Đọc thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Offer End -->


        <!-- Pricing Start -->
        <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-5">
                        <div class="section-title mb-4">
                            <h5 class="position-relative d-inline-block text-primary text-uppercase">Bảng giá</h5>
                            <h1 class="display-5 mb-0">Chúng tôi đưa ra mức giá hợp lý cho việc điều trị nha khoa</h1>
                        </div>
                        <p class="mb-4">Với mong muốn khẳng định chất lượng, dịch vụ và tạo lòng tin bền vững với khách
                            hàng, Nha Khoa DentCare xây dựng chính sách bảng giá dịch vụ nha khoa hợp lý với nhiều mức giá
                            rõ ràng cho từng dịch vụ điều trị bệnh.</p>
                        <h5 class="text-uppercase text-primary wow fadeInUp" data-wow-delay="0.3s">Gọi cho cuộc hẹn</h5>
                        <h1 class="wow fadeInUp" data-wow-delay="0.6s">+084 345 6789</h1>
                    </div>
                    <div class="col-lg-7">
                        <div class="owl-carousel price-carousel wow zoomIn" data-wow-delay="0.9s">
                            <div class="price-item pb-4">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-1.jpg" alt="">
                                    <div class="d-flex align-items-center justify-content-center bg-light rounded pt-2 px-3 position-absolute top-100 start-50 translate-middle"
                                         style="z-index: 2;">
                                        <h2 class="text-primary m-0">3.000.000</h2>
                                    </div>
                                </div>
                                <div class="position-relative text-center bg-light border-bottom border-primary py-5 p-4">
                                    <h4>Tẩy trắng răng</h4>
                                    <hr class="text-primary w-50 mx-auto mt-0">
                                    <div class="d-flex justify-content-between mb-3"><span>Trang thiết bị hiện đại</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <div class="d-flex justify-content-between mb-3"><span>Nha sĩ chuyên nghiệp</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <div class="d-flex justify-content-between mb-2"><span>Nhận hỗ trợ 24/7</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <a href="appointment.html"
                                       class="btn btn-primary py-2 px-4 position-absolute top-100 start-50 translate-middle">Cuộc
                                        hẹn</a>
                                </div>
                            </div>
                            <div class="price-item pb-4">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-2.jpg" alt="">
                                    <div class="d-flex align-items-center justify-content-center bg-light rounded pt-2 px-3 position-absolute top-100 start-50 translate-middle"
                                         style="z-index: 2;">
                                        <h2 class="text-primary m-0">1.800.000</h2>
                                    </div>
                                </div>
                                <div class="position-relative text-center bg-light border-bottom border-primary py-5 p-4">
                                    <h4>Nhổ răng khôn</h4>
                                    <hr class="text-primary w-50 mx-auto mt-0">
                                    <div class="d-flex justify-content-between mb-3"><span>Trang thiết bị hiện đại</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <div class="d-flex justify-content-between mb-3"><span>Nha sĩ chuyên nghiệp</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <div class="d-flex justify-content-between mb-2"><span>Nhận hỗ trợ 24/7</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <a href="appointment.html"
                                       class="btn btn-primary py-2 px-4 position-absolute top-100 start-50 translate-middle">Cuộc
                                        hẹn</a>
                                </div>
                            </div>
                            <div class="price-item pb-4">
                                <div class="position-relative">
                                    <img class="img-fluid rounded-top" src="img/price-3.jpg" alt="">
                                    <div class="d-flex align-items-center justify-content-center bg-light rounded pt-2 px-3 position-absolute top-100 start-50 translate-middle"
                                         style="z-index: 2;">
                                        <h2 class="text-primary m-0">500.000</h2>
                                    </div>
                                </div>
                                <div class="position-relative text-center bg-light border-bottom border-primary py-5 p-4">
                                    <h4>Điều trị tủy</h4>
                                    <hr class="text-primary w-50 mx-auto mt-0">
                                    <div class="d-flex justify-content-between mb-3"><span>Trang thiết bị hiện đại</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <div class="d-flex justify-content-between mb-3"><span>Nha sĩ chuyên nghiệp</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <div class="d-flex justify-content-between mb-2"><span>Nhận hỗ trợ 24/7</span><i
                                            class="fa fa-check text-primary pt-1"></i></div>
                                    <a href="appointment.html"
                                       class="btn btn-primary py-2 px-4 position-absolute top-100 start-50 translate-middle">Cuộc
                                        hẹn</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pricing End -->


        <!-- Testimonial Start -->
        <div class="container-fluid bg-primary bg-testimonial py-5 my-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="owl-carousel testimonial-carousel rounded p-5 wow zoomIn" data-wow-delay="0.6s">
                            <div class="testimonial-item text-center text-white">
                                <img class="img-fluid mx-auto rounded mb-4" src="img/testimonial-1.jpg" alt="">
                                <p class="fs-5">Tạo ra nụ cười rực rỡ cho lối sống lành mạnh!</p>
                                <hr class="mx-auto w-25">
                                <h4 class="text-white mb-0">Hồng Hưng</h4>
                            </div>
                            <div class="testimonial-item text-center text-white">
                                <img class="img-fluid mx-auto rounded mb-4" src="img/testimonial-2.jpg" alt="">
                                <p class="fs-5">Tận hưởng vẻ đẹp của nụ cười khỏe mạnh!</p>
                                <hr class="mx-auto w-25">
                                <h4 class="text-white mb-0">Hòa Bình</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <!-- Team Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-4 wow slideInUp" data-wow-delay="0.1s">
                        <div class="section-title bg-light rounded h-100 p-5">
                            <h5 class="position-relative d-inline-block text-primary text-uppercase">Nha sĩ của chúng tôi
                            </h5>
                            <h1 class="display-6 mb-4">Gặp gỡ nha sĩ có kinh nghiệm và được chứng nhận của chúng tôi</h1>
                            <a href="appointment.html" class="btn btn-primary py-3 px-5">Cuộc hẹn</a>
                        </div>
                    </div>
                    <div class="col-lg-4 wow slideInUp" data-wow-delay="0.3s">
                        <div class="team-item">
                            <div class="position-relative rounded-top" style="z-index: 1;">
                                <img class="img-fluid rounded-top w-100" src="img/team-1.jpg" alt="">
                                <div
                                    class="position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex">
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-twitter fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-facebook-f fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-linkedin-in fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-instagram fw-normal"></i></a>
                                </div>
                            </div>
                            <div class="team-text position-relative bg-light text-center rounded-bottom p-4 pt-5">
                                <h4 class="mb-2">Dr. John Doe</h4>
                                <p class="text-primary mb-0">Nha sĩ</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 wow slideInUp" data-wow-delay="0.6s">
                        <div class="team-item">
                            <div class="position-relative rounded-top" style="z-index: 1;">
                                <img class="img-fluid rounded-top w-100" src="img/team-2.jpg" alt="">
                                <div
                                    class="position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex">
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-twitter fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-facebook-f fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-linkedin-in fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-instagram fw-normal"></i></a>
                                </div>
                            </div>
                            <div class="team-text position-relative bg-light text-center rounded-bottom p-4 pt-5">
                                <h4 class="mb-2">Dr. John Doe</h4>
                                <p class="text-primary mb-0">Nha sĩ</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 wow slideInUp" data-wow-delay="0.1s">
                        <div class="team-item">
                            <div class="position-relative rounded-top" style="z-index: 1;">
                                <img class="img-fluid rounded-top w-100" src="img/team-3.jpg" alt="">
                                <div
                                    class="position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex">
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-twitter fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-facebook-f fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-linkedin-in fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-instagram fw-normal"></i></a>
                                </div>
                            </div>
                            <div class="team-text position-relative bg-light text-center rounded-bottom p-4 pt-5">
                                <h4 class="mb-2">Dr. John Doe</h4>
                                <p class="text-primary mb-0">Nha sĩ</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 wow slideInUp" data-wow-delay="0.3s">
                        <div class="team-item">
                            <div class="position-relative rounded-top" style="z-index: 1;">
                                <img class="img-fluid rounded-top w-100" src="img/team-4.jpg" alt="">
                                <div
                                    class="position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex">
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-twitter fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-facebook-f fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-linkedin-in fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-instagram fw-normal"></i></a>
                                </div>
                            </div>
                            <div class="team-text position-relative bg-light text-center rounded-bottom p-4 pt-5">
                                <h4 class="mb-2">Dr. John Doe</h4>
                                <p class="text-primary mb-0">Hộ lý nha khoa</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 wow slideInUp" data-wow-delay="0.6s">
                        <div class="team-item">
                            <div class="position-relative rounded-top" style="z-index: 1;">
                                <img class="img-fluid rounded-top w-100" src="img/team-5.jpg" alt="">
                                <div
                                    class="position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex">
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-twitter fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-facebook-f fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-linkedin-in fw-normal"></i></a>
                                    <a class="btn btn-primary btn-square m-1" href="#"><i
                                            class="fab fa-instagram fw-normal"></i></a>
                                </div>
                            </div>
                            <div class="team-text position-relative bg-light text-center rounded-bottom p-4 pt-5">
                                <h4 class="mb-2">Dr. John Doe</h4>
                                <p class="text-primary mb-0">Điều dưỡng nha khoa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Newsletter Start -->
        <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">
            <div class="container">
                <div class="bg-primary p-5">
                    <form class="mx-auto" style="max-width: 600px;">
                        <div class="input-group">
                            <input type="text" class="form-control border-white p-3" placeholder="Email của bạn">
                            <button class="btn btn-dark px-4">Đăng ký</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Newsletter End -->


        <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->

    </body>
</html>