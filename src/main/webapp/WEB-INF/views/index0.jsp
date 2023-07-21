<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="landing page starter kit">
  <meta name="keywords" content="bootstrap 5, saas, landing page">
  <meta name="author" content="asaduzzaman">
  <title>Placewise - Online Booking HTML Template</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/resources/css/fonts/material-icon.css">
  <link rel="stylesheet" href="/resources/css/fonts/fontawesome.css">
  <link rel="stylesheet" href="/resources/css/fonts/ff-1.css">
  <link rel="icon" href="/resources/img/favicon.png" type="image/png">
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="">
  <link rel="stylesheet" href="/resources/css/plugins.css">
  <link rel="stylesheet" href="/resources/css/style.css">
</head>

<body>
  <!-- preloader -->
  <div class="preloader">
    <div class="preloader__img">
      <img src="/resources/img/favicon.png" alt="image">
    </div>
  </div>
  <!-- preloader End -->
  <img src="/resources/img/primary-hero-el-1.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-1">
  <img src="/resources/img/primary-hero-el-2.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-2">
  <!-- Header Top  -->
  <div class="py-5 border-bottom header-top">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <ul class="list list-row flex-wrap gap-3 align-items-center justify-content-between">
            <li>
              <a href="index.html" class="link d-inline-block">
                <img src="/resources/img/favicon.png" alt="logo" class="logo d-xl-none">
                <img src="/resources/img/logo.png" alt="logo" class="logo d-none d-xl-inline-block">
              </a>
            </li>
            <li>
              <ul class="list list-row flex-wrap align-items-center list-divider">
                <li>
                  <div class="d-flex align-items-center gap-5">
                    <div class="w-10 h-10 rounded-circle bg-primary-300 d-grid place-content-center flex-shrink-0">
                      <span class="material-symbols-outlined mat-icon fs-24 clr-neutral-0 fw-300"> phone_in_talk </span>
                    </div>
                    <div class="d-none d-lg-block">
                      <span class="fs-12 d-block"> Free Call </span>
                      <a href="tel:406-555-0120" class="link d-block clr-neutral-700 :clr-primary-300"> (406) 555-0120 </a>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="d-flex align-items-center gap-5">
                    <div class="w-10 h-10 rounded-circle bg-secondary-300 d-grid place-content-center flex-shrink-0">
                      <span class="material-symbols-outlined mat-icon fs-24 clr-neutral-700 fw-300"> mark_as_unread </span>
                    </div>
                    <div class="d-none d-lg-block">
                      <span class="fs-12 d-block"> Online Support </span>
                      <a href="mailto:mail@example.com" class="link d-block clr-neutral-700 :clr-primary-300"> mail@example.com </a>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="d-flex align-items-center gap-5">
                    <div class="w-10 h-10 rounded-circle bg-tertiary-300 d-grid place-content-center flex-shrink-0">
                      <span class="material-symbols-outlined mat-icon fs-24 clr-neutral-700 fw-300"> pin_drop </span>
                    </div>
                    <div class="d-none d-lg-block">
                      <span class="fs-12 d-block"> Online Location </span>
                      <span class="d-block"> 3605 Parker Rd. </span>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li class="d-none d-md-block">
              <a href="contact.html" class="link btn bg-primary-300 :bg-primary-300 clr-neutral-0 :clr-neutral-0 fw-600 py-4 px-8 rounded-pill"> Submit Property </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- /Header Top  -->
  <!-- Header -->
  <header class="header header--sticky border-bottom">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="menu d-lg-flex justify-content-lg-between align-items-lg-center">
            <div class="menu-mobile-nav d-flex align-items-center justify-content-between py-3 py-lg-0 order-lg-2">
              <button class="menu-toggle w-10 h-10 p-0 border-0 lh-1 bg-primary-50 clr-primary-500 transition :clr-primary-50 :bg-primary-500 rounded-1 flex-shrink-0 order-2 order-lg-1 d-lg-none">
                <span class="material-symbols-outlined mat-icon fs-28"> menu </span>
              </button>
              <ul class="list list-row gap-4 flex-wrap align-items-center order-1">
                <li>
                  <div class="dropdown">
                    <a href="#" class="link d-flex align-items-center gap-2 p-2 rounded-pill bg-primary-5p clr-neutral-500" data-bs-toggle="dropdown" data-bs-offset="0,14">
                      <ul class="list list-row list-divider-half-xs align-items-center lh-1">
                        <li>
                          <span class="material-symbols-rounded mat-icon"> language </span>
                        </li>
                        <li>
                          <span class="material-symbols-rounded mat-icon"> paid </span>
                        </li>
                      </ul>
                      <span class="material-symbols-rounded mat-icon flex-shrink-0"> expand_more </span>
                    </a>
                    <div class="dropdown-menu dropdown-start p-0 border border-neutral-30">
                      <div class="p-4">
                        <ul class="list list-sm-row flex-wrap gap-1 gap-sm-0 w-24ch">
                          <li class="w-sm-50 p-1">
                            <a href="#" class="link d-inline-block dropdown-item clr-neutral-500 bg-neutral-20 :bg-neutral-20 rounded">
                              <span class="d-block fw-medium mb-1"> English </span>
                              <span class="d-block fs-12 clr-neutral-70"> United States </span>
                            </a>
                          </li>
                          <li class="w-sm-50 p-1">
                            <a href="#" class="link d-inline-block dropdown-item clr-neutral-500 :bg-neutral-20 rounded">
                              <span class="d-block fw-medium mb-1"> Spanish </span>
                              <span class="d-block fs-12 clr-neutral-70"> Spain </span>
                            </a>
                          </li>
                          <li class="w-sm-50 p-1">
                            <a href="#" class="link d-inline-block dropdown-item clr-neutral-500 :bg-neutral-20 rounded">
                              <span class="d-block fw-medium mb-1"> Bengali </span>
                              <span class="d-block fs-12 clr-neutral-70"> Bangladesh </span>
                            </a>
                          </li>
                          <li class="w-sm-50 p-1">
                            <a href="#" class="link d-inline-block dropdown-item clr-neutral-500 :bg-neutral-20 rounded">
                              <span class="d-block fw-medium mb-1"> Hindi </span>
                              <span class="d-block fs-12 clr-neutral-70"> India </span>
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="dropdown">
                    <a href="#" class="link d-grid place-content-center w-10 h-10 rounded-circle bg-primary-5p clr-neutral-500" data-bs-toggle="dropdown" data-bs-offset="0,16">
                      <span class="material-symbols-rounded mat-icon position-relative"> notifications <span class="d-inline-block position-absolute top-0 end-0 w-2 h-2 rounded-circle bg-primary-300"></span>
                      </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-xl-end p-0 border border-neutral-30">
                      <div class="p-4 p-xxl-6 max-width">
                        <h5 class="mb-4"> Notifications </h5>
                        <ul class="list gap-2">
                          <li>
                            <a href="#" class="link d-flex gap-4 dropdown-item px-0 px-md-4">
                              <div class="flex-shrink-0 d-none d-sm-block">
                                <img src="/resources/img/user-3.jpg" alt="image" class="img-fluid w-12 h-12 rounded-circle objec-fit-cover">
                              </div>
                              <div class="flex-grow-1 white-space-normal notifications-content">
                                <h6 class="mb-0">Peter Parker</h6>
                                <p class="fs-14 clr-neutral-500 mb-1"> New message alert! @trending </p>
                                <span class="d-block fs-12 clr-neutral-100"> 6 Sec ago </span>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="#" class="link d-flex gap-4 dropdown-item px-0 px-md-4">
                              <div class="flex-shrink-0 d-none d-sm-block">
                                <img src="/resources/img/user-1.jpg" alt="image" class="img-fluid w-12 h-12 rounded-circle objec-fit-cover">
                              </div>
                              <div class="flex-grow-1 white-space-normal notifications-content">
                                <h6 class="mb-0">Gal Gadot</h6>
                                <p class="fs-14 clr-neutral-500 mb-1"> Measure actions your users take Me </p>
                                <span class="d-block fs-12 clr-neutral-100"> 3 Min ago </span>
                              </div>
                            </a>
                          </li>
                          <li>
                            <a href="#" class="link d-flex gap-4 dropdown-item px-0 px-md-4">
                              <div class="flex-shrink-0 d-none d-sm-block">
                                <img src="/resources/img/user-2.jpg" alt="image" class="img-fluid w-12 h-12 rounded-circle objec-fit-cover">
                              </div>
                              <div class="flex-grow-1 white-space-normal notifications-content">
                                <h6 class="mb-0">Eva Green</h6>
                                <p class="fs-14 clr-neutral-500 mb-1"> Measure actions your users take </p>
                                <span class="d-block fs-12 clr-neutral-100"> 1 Week ago </span>
                              </div>
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="dropdown">
                    <a href="#" class="link d-inline-block" data-bs-toggle="dropdown" data-bs-offset="0,16">
                      <img src="/resources/img/user-1.jpg" alt="image" class="img-fluid w-10 h-10 rounded-circle objec-fit-cover">
                    </a>
                    <div class="dropdown-menu dropdown-menu-end p-0 border border-neutral-30">
                      <div class="p-6">
                        <div class="d-flex align-items-center gap-4 max-width">
                          <img src="/resources/img/user-1.jpg" alt="image" class="img-fluid w-12 h-12 rounded-circle object-fit-cover flex-shrink-0">
                          <div class="flex-grow-1">
                            <h5 class="mb-0">Peter Parker</h5>
                            <span class="d-block fs-14"> Los Angeles, CA </span>
                          </div>
                        </div>
                        <div class="hr-dashed mt-4 mb-2"></div>
                        <ul class="list">
                          <li>
                            <a href="#" class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
                              <span class="material-symbols-outlined mat-icon fs-28 flex-shrink-0"> person </span>
                              <span class="d-block fs-14 fw-medium flex-grow-1"> My Account </span>
                            </a>
                          </li>
                          <li>
                            <a href="#" class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
                              <span class="material-symbols-outlined mat-icon fs-28 flex-shrink-0"> event_note </span>
                              <span class="d-block fs-14 fw-medium flex-grow-1"> My Bookings </span>
                            </a>
                          </li>
                          <li>
                            <a href="#" class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
                              <span class="material-symbols-outlined mat-icon fs-28 flex-shrink-0"> favorite </span>
                              <span class="d-block fs-14 fw-medium flex-grow-1"> Wishlist </span>
                            </a>
                          </li>
                        </ul>
                        <div class="hr-dashed my-2"></div>
                        <ul class="list">
                          <li>
                            <a href="#" class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
                              <span class="material-symbols-outlined mat-icon fs-28 flex-shrink-0"> info </span>
                              <span class="d-block fs-14 fw-medium flex-grow-1"> Help </span>
                            </a>
                          </li>
                          <li>
                            <a href="#" class="link d-flex align-items-center gap-3 clr-neutral-400 dropdown-item px-2">
                              <span class="material-symbols-outlined mat-icon fs-28 flex-shrink-0"> exit_to_app </span>
                              <span class="d-block fs-14 fw-medium flex-grow-1"> Log out </span>
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <ul class="list list-lg-row menu-nav order-lg-1">
              <li class="menu-list current-page">
                <a href="#" class="link menu-link has-sub"> Home </a>
                <ul class="list menu-sub">
                  <li class="menu-sub-list">
                    <a href="index.html" class="link menu-sub-link"> Real Estate </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="home-2.html" class="link menu-sub-link"> Property Listing </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="home-3.html" class="link menu-sub-link"> Car Rental </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="home-4.html" class="link menu-sub-link"> Hotel Booking </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="home-5.html" class="link menu-sub-link"> Tour Booking </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="home-6.html" class="link menu-sub-link"> Flight Booking </a>
                  </li>
                </ul>
              </li>
              <li class="menu-list">
                <a href="#" class="link menu-link has-sub"> Listings </a>
                <ul class="list menu-sub">
                  <li class="menu-sub-list">
                    <a href="property-list.html" class="link menu-sub-link"> Property List </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="property-grid.html" class="link menu-sub-link"> Property List (Grid) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="property-map.html" class="link menu-sub-link"> Property Map </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="cab-listing.html" class="link menu-sub-link"> Cab Listing </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="cab-listing-grid.html" class="link menu-sub-link"> Cab Listing (Grid) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="cab-listing-map.html" class="link menu-sub-link"> Cab Listing (Map) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="hotel-listing.html" class="link menu-sub-link"> Hotel Listing </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="hotel-listing-grid.html" class="link menu-sub-link"> Hotel Listing (Grid) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="hotel-listing-map.html" class="link menu-sub-link"> Hotel Listing (Map) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="tour-listing.html" class="link menu-sub-link"> Tour Listing </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="tour-listing-grid.html" class="link menu-sub-link"> Tour Listing (Grid) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="tour-listing-map.html" class="link menu-sub-link"> Tour Listing (Map) </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="flight-list.html" class="link menu-sub-link"> Flight List </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="compare-listing.html" class="link menu-sub-link"> Compare Listing </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="add-property.html" class="link menu-sub-link"> Add Property </a>
                  </li>
                </ul>
              </li>
              <li class="menu-list">
                <a href="#" class="link menu-link has-sub"> Pages </a>
                <ul class="list menu-sub">
                  <li class="menu-sub-list">
                    <a href="about-us.html" class="link menu-sub-link"> About Us </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="add-property.html" class="link menu-sub-link"> Add Property </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="property-details-1.html" class="link menu-sub-link"> Property Details 1 </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="property-details-2.html" class="link menu-sub-link"> Property Details 2 </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="cab-listing-details.html" class="link menu-sub-link"> Cab Listing Details </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="hotel-listing-details.html" class="link menu-sub-link"> Hotel Listing Details </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="tour-listing-details.html" class="link menu-sub-link"> Tour Listing Details </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="flight-details.html" class="link menu-sub-link"> Flight Details </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="payment-method.html" class="link menu-sub-link"> Payment Method </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="service.html" class="link menu-sub-link"> Service </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="service-details.html" class="link menu-sub-link"> Service Details </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="agent.html" class="link menu-sub-link"> Agent </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="agent-details-grid.html" class="link menu-sub-link"> Agent Details Grid </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="agent-details-list.html" class="link menu-sub-link"> Agent Details List </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="agent-details-review.html" class="link menu-sub-link"> Agent Review </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="pricing-plan.html" class="link menu-sub-link"> Pricing Plan </a>
                  </li>
                </ul>
              </li>
              <li class="menu-list">
                <a href="#" class="link menu-link has-sub clear-content">
                  <span class="material-symbols-outlined mat-icon"> more_horiz </span>
                </a>
                <ul class="list menu-sub">
                  <li class="menu-sub-list">
                    <a href="blog-grid.html" class="link menu-sub-link"> Blog </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="blog-details.html" class="link menu-sub-link"> Blog Details </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="faq.html" class="link menu-sub-link"> FAQ </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="contact.html" class="link menu-sub-link"> Contact Us </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="sign-in.html" class="link menu-sub-link"> Signin </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="signup.html" class="link menu-sub-link"> Signup </a>
                  </li>
                  <li class="menu-sub-list">
                    <a href="error.html" class="link menu-sub-link"> Error </a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- /Header -->
  <!-- hero -->
  <div class="primary-hero">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <h1 class="d2 text-center mb-6"> TEST </h1>
          <p class="max-text-40 mx-auto text-center fs-20 mb-10"> Explore vast property listings by category with our user-friendly search. Find your perfect match! </p>
        </div>
        <div class="col-xxl-10">
          <form action="#">
            <div class="property-search p-6 rounded-3 bg-neutral-0">
              <div class="property-search__content d-flex flex-wrap justify-content-center align-items-center gap-4">
                <div class="property-search__select property-search__col rounded-pill d-flex align-items-center gap-2 px-6">
                  <span class="material-symbols-outlined mat-icon"> water_damage </span>
                  <select class="form-select" aria-label="Default select example">
                    <option selected>For Rent</option>
                    <option value="1">For Sale</option>
                  </select>
                </div>
                <div class="property-search__select property-search__col rounded-pill d-flex align-items-center gap-2 px-6">
                  <span class="material-symbols-outlined mat-icon"> distance </span>
                  <select class="form-select" aria-label="Default select example">
                    <option selected>Location</option>
                    <option value="1">New York</option>
                    <option value="2">Chicago</option>
                    <option value="3">Atlanta</option>
                  </select>
                </div>
                <div class="property-search__select property-search__col rounded-pill d-flex align-items-center gap-2 px-6">
                  <span class="material-symbols-rounded mat-icon"> grid_view </span>
                  <select class="form-select" aria-label="Default select example">
                    <option selected>Property Type</option>
                    <option value="1">Houses</option>
                    <option value="2">Apartments</option>
                    <option value="3">Commercial</option>
                  </select>
                </div>
                <div class="property-search__price property-search__col rounded-pill d-flex align-items-center gap-2 px-6 py-3">
                  <div class="d-flex gap-2 align-items-center">
                    <span class="material-symbols-rounded mat-icon"> add_card </span>
                    <span class="d-inline-block fs-14"> Price </span>
                  </div>
                  <div class="property-search__range d-grid">
                    <input type="range" min="1" max="1000" value="450" class="property-search__range-input" id="myRange" oninput="rangevalue.value=value">
                  </div>
                  <div class="property-search__range-price">
                    <span class="d-inline-block fs-10 clr-primary-300"> $ <output class="property-search__range-value" id="rangevalue">450</output>
                    </span>
                  </div>
                </div>
                <button class="btn rounded-pill property-search__btn property-search__col">
                  <span class="material-symbols-rounded mat-icon"> search </span>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <img src="/resources/img/primary-hero-img-1.jpg" alt="image" class="img-fluid primary-hero__el primary-hero__img-1">
    <img src="/resources/img/primary-hero-img-2.jpg" alt="image" class="img-fluid primary-hero__el primary-hero__img-2">
    <img src="/resources/img/primary-hero-el-3.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-3">
    <img src="/resources/img/primary-hero-el-4.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-4">
    <img src="/resources/img/primary-hero-el-5.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-5">
    <img src="/resources/img/primary-hero-el-6.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-6">
    <img src="/resources/img/primary-hero-el-7.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-7">
    <img src="/resources/img/primary-hero-el-8.png" alt="image" class="img-fluid primary-hero__el primary-hero__el-8">
    <div class="scroll-nav text-center">
      <div class="w-15 h-15 d-grid place-content-center bg-primary-300 clr-neutral-0 rounded-circle">
        <span class="material-symbols-outlined mat-icon"> south </span>
      </div>
      <div class="d-inline-block text-center fs-14 mt-3"> More Details </div>
    </div>
  </div>
  <!-- /hero -->
  <!-- Featured Property  -->
  <section class="section-space featured-property-section">
    <img src="/resources/img/category-section-el.png" alt="image" class="img-fluid featured-section-el-1 d-none d-xxl-block position-absolute z-n1">
    <img src="/resources/img/featured-section-el.png" alt="image" class="img-fluid featured-section-el-2 d-none d-xxl-block position-absolute z-n1">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="d-flex justify-content-md-between align-items-center flex-wrap gap-5 mb-10">
            <div class="list-group flex-row flex-wrap gap-5">
              <a href="#new-york" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill active" data-bs-toggle="list"> 수도권 </a>
              <a href="#mumbai" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill" data-bs-toggle="list"> 강원권 </a>
              <a href="#paris" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill" data-bs-toggle="list"> 제주도 </a>
              <a href="#london" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill" data-bs-toggle="list"> 경상권/전라권/충청권 </a>
            </div>
            <a href="property-grid.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> View All <span class="material-symbols-outlined mat-icon lh-1"> trending_flat </span>
            </a>
          </div>
          <div class="tab-content">
            <div class="tab-pane fade show active" id="new-york">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Regal North Hills - 4150 Main at North Hills St, Raleigh </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 8558 Green Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Spring Lane Cinemas - 1351 Plaza Blvd, Sanford, NC 27330 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> RCE Theaters - 907 S Beckford Dr, Henderson, NC 27536 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3605 Parker Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Costco Wholesale - 1021 Oak Forest Ln, Myrtle Beach, SC </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Dollar General - 5416 Rock Quarry Rd, Raleigh, NC 27610 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Best Buy - 6280 Capital Blvd, Raleigh, NC 27616 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="mumbai">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Best Buy - 6280 Capital Blvd, Raleigh, NC 27616 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Regal North Hills - 4150 Main at North Hills St, Raleigh </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 8558 Green Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Spring Lane Cinemas - 1351 Plaza Blvd, Sanford, NC 27330 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> RCE Theaters - 907 S Beckford Dr, Henderson, NC 27536 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3605 Parker Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Costco Wholesale - 1021 Oak Forest Ln, Myrtle Beach, SC </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Dollar General - 5416 Rock Quarry Rd, Raleigh, NC 27610 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="#" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="paris">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Regal North Hills - 4150 Main at North Hills St, Raleigh </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 8558 Green Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Spring Lane Cinemas - 1351 Plaza Blvd, Sanford, NC 27330 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> RCE Theaters - 907 S Beckford Dr, Henderson, NC 27536 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3605 Parker Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Costco Wholesale - 1021 Oak Forest Ln, Myrtle Beach, SC </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Dollar General - 5416 Rock Quarry Rd, Raleigh, NC 27610 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Best Buy - 6280 Capital Blvd, Raleigh, NC 27616 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="london">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3605 Parker Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Costco Wholesale - 1021 Oak Forest Ln, Myrtle Beach, SC </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="property-card__img">
                        <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Regal North Hills - 4150 Main at North Hills St, Raleigh </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 8558 Green Rd. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Spring Lane Cinemas - 1351 Plaza Blvd, Sanford, NC 27330 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-3.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                      <span class="property-card__popular-tag">
                        <span class="d-inline-block fs-14 fw-semibold clr-neutral-0 bg-primary-300 py-2 px-9"> Popular </span>
                      </span>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> RCE Theaters - 907 S Beckford Dr, Henderson, NC 27536 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-2.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 7529 E. Pecan St. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Dollar General - 5416 Rock Quarry Rd, Raleigh, NC 27610 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4">
                  <div class="property-card">
                    <div class="property-card__head">
                      <div class="swiper property-card-slider">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-6.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-5.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-4.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                          <div class="swiper-slide">
                            <div class="property-card__img">
                              <img src="/resources/img/featured-img-1.jpg" alt="image" class="img-fluid w-100">
                            </div>
                          </div>
                        </div>
                        <div class="swiper-pagination property-card-pagination"></div>
                        <div class="swiper-button-prev property-card-prev"></div>
                        <div class="swiper-button-next property-card-next"></div>
                      </div>
                      <a href="property-list.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Rent </a>
                      <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                        <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                      </button>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex align-items-center gap-1 mb-4">
                        <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                        <span class="d-inline-block"> 3890 Poplar Dr. </span>
                      </div>
                      <a href="property-details-1.html" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> Best Buy - 6280 Capital Blvd, Raleigh, NC 27616 </a>
                      <ul class="list list-row flex-wrap dotted-divider">
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                          <span class="d-block"> 3 Room </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                          <span class="d-block"> 5 Bed </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                          <span class="d-block"> 1 Bath </span>
                        </li>
                        <li>
                          <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> drag_pan </span>
                          <span class="d-block"> 732 sft </span>
                        </li>
                      </ul>
                    </div>
                    <div class="property-card__body py-0">
                      <div class="hr-dashed"></div>
                    </div>
                    <div class="property-card__body">
                      <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <span class="d-block fs-20 fw-medium clr-primary-300"> $5,256 <span class="d-inline-block clr-neutral-500 fs-16 fw-normal"> /month </span>
                        </span>
                        <a href="property-details-1.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> Read More </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="text-center">
            <a href="property-grid.html" class="link d-inline-flex align-items-center gap-2 py-3 px-6 rounded-pill bg-primary-300 clr-neutral-0 :bg-primary-400 :clr-neutral-0 fw-semibold mt-10">
              <span class="material-symbols-outlined"> hourglass_top </span>
              <span class="d-inline-block"> Show More </span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- /Featured Property  -->
  <!-- New Listing  -->
  <section class="section-space">
    <div class="section-space--sm-bottom">
      <div class="container">
        <div class="row g-4 align-items-center">
          <div class="col-xl-6">
            <span class="d-inline-flex align-items-center bg-primary-50 gap-4 rounded-pill py-1 ps-1 pe-5">
              <span class="w-9 h-9 rounded-circle d-grid place-content-center bg-primary-300 clr-neutral-0 flex-shrink-0">
                <span class="material-symbols-outlined mat-icon fw-200"> arrow_right_alt </span>
              </span>
              <span class="h5 lh-1 m-0 clr-primary-400 fw-semibold"> New Listing </span>
            </span>
            <h2 class="mt-4 mb-0"> New Listings Added Today </h2>
          </div>
          <div class="col-xl-6">
            <div class="list-group flex-row flex-wrap justify-content-xl-end gap-5">
              <a href="#list-apartments" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill active" data-bs-toggle="list"> Apartments </a>
              <a href="#list-houses" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill" data-bs-toggle="list"> Houses </a>
              <a href="#list-commercial" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill" data-bs-toggle="list"> Commercial </a>
              <a href="#list-studio" class="featured-tab link fw-semibold clr-primary-400 d-inline-block py-3 px-6 bg-primary-50 :bg-primary-300 :clr-neutral-0 rounded-pill" data-bs-toggle="list"> Studio </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="list-apartments">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-1.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Luxury Studio </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> United States </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 order-md-3 order-xl-2">
                  <div class="row g-4">
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-2.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Country House </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 8558 Green Rd. </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-3.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Duplex Garage </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 775 Rolling Green </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4 order-xl-3">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-4.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> New Apartment </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> 3890 Poplar Dr. </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="list-houses">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-1.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Luxury Studio </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> United States </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 order-md-3 order-xl-2">
                  <div class="row g-4">
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-2.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Country House </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 8558 Green Rd. </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-3.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Duplex Garage </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 775 Rolling Green </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4 order-xl-3">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-4.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> New Apartment </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> 3890 Poplar Dr. </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="list-commercial">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-1.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Luxury Studio </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> United States </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 order-md-3 order-xl-2">
                  <div class="row g-4">
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-2.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Country House </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 8558 Green Rd. </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-3.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Duplex Garage </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 775 Rolling Green </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4 order-xl-3">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-4.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> New Apartment </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> 3890 Poplar Dr. </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="list-studio">
              <div class="row g-4">
                <div class="col-md-6 col-xl-4">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-1.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Luxury Studio </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> United States </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 order-md-3 order-xl-2">
                  <div class="row g-4">
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-2.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Country House </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 8558 Green Rd. </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-xl-12">
                      <div class="listing-card">
                        <div class="listing-card__img">
                          <img src="/resources/img/listing-img-3.jpg" alt="image" class="img-fluid w-100">
                        </div>
                        <div class="listing-card__content">
                          <div class="d-flex align-items-center justify-content-end">
                            <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                          </div>
                          <div class="listing-card__content-is">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                              <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Rental </span>
                              <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                              </span>
                            </div>
                            <div class="d-flex flex-wrap gap-4 gap-xl-0 align-items-center justify-content-between">
                              <div class="flex-grow-1">
                                <h4>
                                  <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> Duplex Garage </a>
                                </h4>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                                  <span class="clr-neutral-0"> 775 Rolling Green </span>
                                </div>
                              </div>
                              <div class="flex-shrink-0">
                                <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-xl-4 order-xl-3">
                  <div class="listing-card">
                    <div class="listing-card__img">
                      <img src="/resources/img/listing-img-4.jpg" alt="image" class="img-fluid w-100">
                    </div>
                    <div class="listing-card__content">
                      <div class="d-flex align-items-center justify-content-between">
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-secondary-200 clr-neutral-900"> Verified </a>
                        <a href="property-list.html" class="link d-inline-block py-2 px-5 rounded-pill bg-tertiary-300 clr-neutral-900"> New </a>
                      </div>
                      <div class="listing-card__content-is">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                          <span class="fs-14 fw-medium d-inline-block clr-neutral-0"> For Sale </span>
                          <span class="d-inline-block fs-20 fw-medium clr-tertiary-300"> $5,256 <span class="fs-16 fw-normal clr-neutral-0">/month</span>
                          </span>
                        </div>
                        <div class="d-flex flex-wrap gap-4 align-items-center justify-content-between">
                          <div class="flex-grow-1">
                            <h4>
                              <a href="property-details-2.html" class="link clr-neutral-0 :clr-neutral-0"> New Apartment </a>
                            </h4>
                            <div class="d-flex align-items-center gap-2">
                              <span class="material-symbols-outlined mat-icon clr-tertiary-300"> distance </span>
                              <span class="clr-neutral-0"> 3890 Poplar Dr. </span>
                            </div>
                          </div>
                          <div class="flex-shrink-0">
                            <a href="property-details-2.html" class="btn btn-outline-secondary rounded-pill py-3 px-6 fw-semibold"> Read More </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="text-center mt-10">
            <a href="property-grid.html" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> View All <span class="material-symbols-outlined mat-icon lh-1"> trending_flat </span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- /New Listing  -->
  <!-- Footer -->
  <div class="bg-neutral-900">
    <div class="section-space">
      <div class="container">
        <div class="row gy-5">
          <div class="col-md-6 col-xl-3">
            <a href="index.html" class="link d-inline-block mb-6">
              <img src="/resources/img/logo-light.png" alt="image" class="img-fluid">
            </a>
            <p class="clr-neutral-30 mb-6"> Real estate can be bought, sold, leased, or rented, and can be a valuable investment opportunity. The value of real estate can be... </p>
            <ul class="list list-row gap-3 flex-wrap">
              <li>
                <a href="#" class="link d-grid place-content-center w-9 h-9 rounded-circle border border-primary clr-neutral-0 :bg-primary-300 :clr-neutral-0">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li>
                <a href="#" class="link d-grid place-content-center w-9 h-9 rounded-circle border border-primary clr-neutral-0 :bg-primary-300 :clr-neutral-0">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li>
                <a href="#" class="link d-grid place-content-center w-9 h-9 rounded-circle border border-primary clr-neutral-0 :bg-primary-300 :clr-neutral-0">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
              <li>
                <a href="#" class="link d-grid place-content-center w-9 h-9 rounded-circle border border-primary clr-neutral-0 :bg-primary-300 :clr-neutral-0">
                  <i class="fab fa-instagram"></i>
                </a>
              </li>
              <li>
                <a href="#" class="link d-grid place-content-center w-9 h-9 rounded-circle border border-primary clr-neutral-0 :bg-primary-300 :clr-neutral-0">
                  <i class="fab fa-dribbble"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-6 col-xl-3">
            <h4 class="clr-neutral-0 mb-6"> Quick Link </h4>
            <ul class="list gap-2">
              <li>
                <a href="about-us.html" class="link d-inline-block clr-neutral-30 :clr-secondary-300"> About Us </a>
              </li>
              <li>
                <a href="property-grid.html" class="link d-inline-block clr-neutral-30 :clr-secondary-300"> Properties </a>
              </li>
              <li>
                <a href="agent.html" class="link d-inline-block clr-neutral-30 :clr-secondary-300"> Agents </a>
              </li>
              <li>
                <a href="faq.html" class="link d-inline-block clr-neutral-30 :clr-secondary-300"> FAQs </a>
              </li>
              <li>
                <a href="blog-grid.html" class="link d-inline-block clr-neutral-30 :clr-secondary-300"> Blog </a>
              </li>
            </ul>
          </div>
          <div class="col-md-6 col-xl-3">
            <h4 class="clr-neutral-0 mb-6"> Contact </h4>
            <ul class="list gap-4">
              <li>
                <div class="d-flex align-items-center gap-4">
                  <div class="w-8 h-8 rounded-circle d-grid place-content-center bg-primary-300 clr-neutral-0 flex-shrink-00">
                    <span class="material-symbols-outlined mat-icon fw-200"> phone_in_talk </span>
                  </div>
                  <p class="mb-0 clr-neutral-30"> (316) 555-0116 </p>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center gap-4">
                  <div class="w-8 h-8 rounded-circle d-grid place-content-center bg-secondary-300 clr-neutral-0 flex-shrink-00">
                    <span class="material-symbols-outlined mat-icon fw-200"> mark_as_unread </span>
                  </div>
                  <p class="mb-0 clr-neutral-30"> example@mail.com </p>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center gap-4">
                  <div class="w-8 h-8 rounded-circle d-grid place-content-center bg-tertiary-300 clr-neutral-0 flex-shrink-00">
                    <span class="material-symbols-outlined mat-icon fw-200"> distance </span>
                  </div>
                  <p class="mb-0 clr-neutral-30"> 31 Brandy Way, Sutton, SM2 6SE </p>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-md-6 col-xl-3">
            <h4 class="clr-neutral-0 mb-6"> Newsletter </h4>
            <p class="mb-6 clr-neutral-30"> Subscribe our newsletter to get our latest update & news </p>
            <div class="p-2 rounded-pill border border-neutral-200">
              <form action="#" class="d-flex align-items-center">
                <input type="text" placeholder="Email address" class="w-100 border-0 bg-transparent clr-neutral-30 px-3 py-2 ::placeholder-neutral-30 :focus-outline-0">
                <button type="button" class="d-grid place-content-center px-6 py-3 rounded-pill bg-tertiary-300 clr-neutral-0 border-0">
                  <span class="material-symbols-outlined mat-icon fw-300"> send </span>
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="py-8 border-top border-primary-500">
            <div class="row g-4 align-items-center">
              <div class="col-lg-6">
                <p class="m-0 clr-neutral-0 text-center text-lg-start">자바바</span>. Designed By <a href="#" class="link clr-secondary-300">Pixelaxis</a>
                </p>
              </div>
              <div class="col-lg-6">
                <ul class="list list-row align-items-center flex-wrap gap-6 justify-content-center justify-content-lg-end">
                  <li>
                    <a href="sign-in.html" class="link clr-neutral-0 :clr-secondary-300"> Sign in </a>
                  </li>
                  <li>
                    <a href="signup.html" class="link clr-neutral-0 :clr-secondary-300"> Sign Up </a>
                  </li>
                  <li>
                    <a href="faq.html" class="link clr-neutral-0 :clr-secondary-300"> FAQ </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /Footer -->
  <!-- scrpts -->
  <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js" integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM=" crossorigin=""></script>
  <script src="/resources/js/plugins.js"></script>
  <script src="/resources/js/app.js"></script>
</body>

</html>
