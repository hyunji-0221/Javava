<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <%@ include file="/resources/in/meta.jsp" %>
  
</head>

<body>
<%@ include file="/resources/in/header.jsp" %>
  
  <!-- 내용 -->

<!-- Property Form -->
  <div class="section-space--sm bg-primary-5p">
    <div class="container">
      <div class="row justify-content-center">
          	<h1 style="text-align:center;">숙소등록</h1>
        <div class="col-xl-10 col-xxl-8">
          <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
            <div class="accordion property-accordion">
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#addProperty" aria-expanded="true"> 상세정보 </button>
                </h3>
                <div id="addProperty" class="accordion-collapse collapse show">
                  <div class="accordion-body">
                    <div class="pt-6">
                      <p class="mb-4 fs-20 fw-medium"> Select Property Type : </p>
                      <ul class="list list-row gap-6 flex-wrap">
                        <li>
                          <div class="d-flex align-items-center gap-2">
                            <input class="custom-radio custom-radio--primary-300" type="radio" name="property-type" id="general-settings">
                            <label class="d-inline-block fs-18 fw-medium cursor-pointer" for="general-settings"> General </label>
                          </div>
                        </li>
                        <li>
                          <div class="d-flex align-items-center gap-2">
                            <input class="custom-radio custom-radio--primary-300" type="radio" name="property-type" id="featured-settings">
                            <label class="d-inline-block fs-18 fw-medium cursor-pointer" for="featured-settings"> Featured </label>
                          </div>
                        </li>
                      </ul>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Title: </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Write Title">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Sale Price: </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="가격을 입력해주세요">
               
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Description : </p>
                      <textarea rows="5" class="form-control" placeholder="Description.."></textarea>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Tagline : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Your tag line">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Tag </p>
                      <select class="form-select form-select-lg fs-16">
                        <option selected>Choice</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="section-space--sm">
            <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
              <div class="accordion property-accordion">
                <div class="accordion-item">
                  <h3 class="accordion-header">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#map-location" aria-expanded="true"> Images & Video with Map </button>
                  </h3>
                  <div id="map-location" class="accordion-collapse collapse show">
                    <div class="accordion-body">
                      <div class="pt-6">
                        <div class="d-flex align-items-center justify-content-center border-dashed rounded-4 w-100">
                          <label for="dropzone-file" class="d-flex flex-column align-items-center justify-content-center w-100 cursor-pointer bg-primary-3p rounded-4">
                            <span class="d-flex flex-column align-items-center justify-content-center py-12">
                              <span class="material-symbols-outlined mat-icon fs-60 fw-200 clr-neutral-500"> cloud_upload </span>
                              <span class="h3 clr-neutral-500 text-center mt-4 mb-3"> Drag & Drop </span>
                              <span class="d-block text-center mb-6 clr-neutral-500"> OR </span>
                              <span class="d-inline-block py-3 px-6 rounded-pill bg-neutral-600 clr-neutral-0 mb-10"> Select Files </span>
                              <span class="d-flex align-items-center justify-content-center flex-wrap gap-5">
                                <span class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon fw-200 clr-neutral-500 flex-shrink-0"> gpp_maybe </span>
                                  <span class="d-block mb-0 clr-neutral-500"> Maximum allowed file size is 9.00 MB </span>
                                </span>
                                <span class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon fw-200 clr-neutral-500 flex-shrink-0"> gpp_maybe </span>
                                  <span class="d-block mb-0 clr-neutral-500"> Maximum 10 files are allowed </span>
                                </span>
                              </span>
                            </span>
                            <input type="file" id="dropzone-file" class="d-none">
                          </label>
                        </div>
                        <p class="mt-6 mb-4 fs-20 fw-medium"> Video Link : </p>
                        <input type="text" class="form-control form-control-lg fs-16" placeholder="Any type video link">
                        <div class="mt-6">
                          <div class="h-400">
                            <iframe width="100%" height="100%" src="https://maps.google.com/maps?q=&t=&z=9&ie=UTF8&iwloc=&output=embed"></iframe>
                          </div>
                        </div>
                        <p class="mt-6 mb-4 fs-20 fw-medium"> Address : </p>
                        <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter Address">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
            <div class="accordion property-accordion">
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#property-details" aria-expanded="true"> Property Details </button>
                </h3>
                <div id="property-details" class="accordion-collapse collapse show">
                  <div class="accordion-body">
                    <div class="pt-6">
                      <p class="mb-4 fs-20 fw-medium"> Beds : </p>
                      <select class="form-select form-select-lg fs-16">
                        <option selected>4</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                      </select>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Bathrooms : </p>
                      <select class="form-select form-select-lg fs-16">
                        <option selected>3</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                      </select>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Garages : </p>
                      <select class="form-select form-select-lg fs-16">
                        <option selected>1</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                      </select>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Person : </p>
                      <select class="form-select form-select-lg fs-16">
                        <option selected>8</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                        <option value="3">5</option>
                        <option value="3">6</option>
                        <option value="3">7</option>
                        <option value="3">8</option>
                      </select>
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Area (sq ft) : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="0">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Property ID : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter ID">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Type : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter type">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Area : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter area">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Bedrooms : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="06">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Parking : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="3">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Dimensions : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="0">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Year Build : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="2023">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="section-space--sm">
            <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
              <div class="accordion property-accordion">
                <div class="accordion-item">
                  <h3 class="accordion-header">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#amenities-facility" aria-expanded="true"> Property Details </button>
                  </h3>
                  <div id="amenities-facility" class="accordion-collapse collapse show">
                    <div class="accordion-body">
                      <div class="pt-6">
                        <p class="mb-4 fs-20 fw-medium"> Beds : </p>
                        <div class="row g-4">
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="air-condition">
                                  <label class="clr-neutral-500" for="air-condition"> Air Conditioning </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="barbeque-check">
                                  <label class="clr-neutral-500" for="barbeque-check"> Barbeque </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="dryer-check">
                                  <label class="clr-neutral-500" for="dryer-check"> Dryer </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="gym-check">
                                  <label class="clr-neutral-500" for="gym-check"> Gym </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="laundry-check">
                                  <label class="clr-neutral-500" for="laundry-check"> Laundry </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="lawn-check">
                                  <label class="clr-neutral-500" for="lawn-check"> Lawn </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="microwave-check">
                                  <label class="clr-neutral-500" for="microwave-check"> Microwave </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="refrigerator-check">
                                  <label class="clr-neutral-500" for="refrigerator-check"> Refrigerator </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="swimming-pool">
                                  <label class="clr-neutral-500" for="swimming-pool"> Swimming Pool </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="window-covering">
                                  <label class="clr-neutral-500" for="window-covering"> Window Coverings </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="outdoor-shower">
                                  <label class="clr-neutral-500" for="outdoor-shower"> Outdoor Shower </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="washer-check">
                                  <label class="clr-neutral-500" for="washer-check"> Washer </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                          <div class="col-md-6 col-lg-3">
                            <ul class="list gap-4">
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="wifi-check">
                                  <label class="clr-neutral-500" for="wifi-check"> WiFi </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="sauna-check">
                                  <label class="clr-neutral-500" for="sauna-check"> Sauna </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="tv-cable">
                                  <label class="clr-neutral-500" for="tv-cable"> TV Cable </label>
                                </div>
                              </li>
                              <li>
                                <div class="d-flex align-items-center gap-3">
                                  <input class="custom-checkbox" type="checkbox" id="internet-check">
                                  <label class="clr-neutral-500" for="internet-check"> Internet </label>
                                </div>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="p-4 p-sm-6 p-md-10 bg-neutral-0 rounded-4">
            <div class="accordion property-accordion">
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#contact-information" aria-expanded="true"> Property Details </button>
                </h3>
                <div id="contact-information" class="accordion-collapse collapse show">
                  <div class="accordion-body">
                    <div class="pt-6">
                      <p class="mb-4 fs-20 fw-medium"> Zip/Post Code : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="4">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Phone : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter Number">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Fax : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter Fax number">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Email : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter Email">
                      <p class="mt-6 mb-4 fs-20 fw-medium"> Website : </p>
                      <input type="text" class="form-control form-control-lg fs-16" placeholder="Enter website">
                      <a href="#" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold mt-6">
                        <span class="d-inline-block"> Add New </span>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="py-10">
            <ul class="list gap-4">
              <li>
                <div class="d-flex align-items-center gap-3">
                  <input class="custom-checkbox custom-checkbox--rounded" type="checkbox" id="privacy-policy">
                  <label class="clr-neutral-500" for="privacy-policy"> I agree to the privacy & policy </label>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center gap-3">
                  <input class="custom-checkbox custom-checkbox--rounded" type="checkbox" id="terms-condition">
                  <label class="clr-neutral-500" for="terms-condition"> I agree with all terms & conditions </label>
                </div>
              </li>
            </ul>
          </div>
          <a href="#" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold">
            <span class="d-inline-block"> Save & Preview </span>
          </a>
        </div>
      </div>
    </div>
  </div>
  <!-- /Property Form -->

<%@ include file="/resources/in/footer.jsp" %>
  
</body>

</html>