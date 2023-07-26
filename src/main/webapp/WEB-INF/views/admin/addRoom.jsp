<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>숙소 등록</title>

    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendors styles-->
    <link rel="stylesheet" href="/resources/admin/vendors/simplebar/css/simplebar.css">
    <link rel="stylesheet" href="/resources/admin/css/vendors/simplebar.css">
    <!-- Main styles for this application-->
    <link href="/resources/admin/css/style.css" rel="stylesheet">
    <!-- We use those styles to show code examples, you should remove them in your application.-->
    <link href="/resources/admin/css/examples.css" rel="stylesheet">
    <link href="/resources/admin/vendors/@coreui/chartjs/css/coreui-chartjs.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/fonts/material-icon.css">
  <%@ include file="/resources/in/meta.jsp" %>
  </head>
  <body>
    	<%@ include file="/resources/admin/in/sidebar.jsp" %>
    <div class="wrapper d-flex flex-column min-vh-100 bg-light">
      <div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="row">
          <!-- Property Form -->
          <form action="/admin/addRoom" method="POST">
          <input type="hidden" name="accommodationID" value="${ room.accommodationID }">
  <div class="section-space--sm bg-primary-5p">
    <div class="container">
      <div class="row justify-content-center">
          	<h1 style="text-align:center;">숙소등록</h1>
        <div class="col-xl-10 col-xxl-8">
          <div class="section-space--sm"></div>
          <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
            <div class="accordion property-accordion">
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#addProperty" aria-expanded="true"> 객실정보 </button>
                </h3>
                <div id="addProperty" class="accordion-collapse collapse show">
                  <div class="accordion-body">
                    <div class="pt-6">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실1: </p>
                      이름:<input type="text" class="form-control form-control-lg fs-16"  name="room1_Name" id="room1_Name" value="${room.room1_Name }">
                      가격:<input type="text" class="form-control form-control-lg fs-16"  name="room1_Price" id="room1_Price" value="${ room.room1_Price }">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실2: </p>
					  이름:<input type="text" class="form-control form-control-lg fs-16" id="room2_Name" name="room2_Name" value="${room.room2_Name }">               
					  가격:<input type="text" class="form-control form-control-lg fs-16" id="room2_Price" name="room2_Price" value="${ room.room2_Price }">               
                      <p class="mt-6 mb-4 fs-20 fw-medium"> 객실3: </p>
					  이름:<input type="text" class="form-control form-control-lg fs-16" id="room3_Name" name="room3_Name" value="${room.room3_Name }">               
					  가격:<input type="text" class="form-control form-control-lg fs-16" id="room3_Price" name="room3_Price" value="${ room.room3_Price }">               
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
   
          <input type="submit" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold" value="객실등록">
        </div>
      </div>
    </div>
  </div>
  </form>
  <!-- /Property Form -->
          </div>
          <!-- /.row-->
        </div>
      </div>
    </div>
    <!-- CoreUI and necessary plugins-->
    <script src="/resources/admin/vendors/@coreui/coreui/js/coreui.bundle.min.js"></script>
    <script src="/resources/admin/vendors/simplebar/js/simplebar.min.js"></script>
    <!-- Plugins and scripts required by this view-->
    <script src="/resources/admin/vendors/chart.js/js/chart.min.js"></script>
    <script src="/resources/admin/vendors/@coreui/chartjs/js/coreui-chartjs.js"></script>
    <script src="/resources/admin/vendors/@coreui/utils/js/coreui-utils.js"></script>
    <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
		integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
		crossorigin=""></script>
	<script src="/resources/js/plugins.js"></script>
	<script src="/resources/js/app.js"></script>

  </body>
</html>