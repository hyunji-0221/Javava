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
  <!-- Property List -->
  <div class="section-space--sm bg-primary-5p">
    <div class="container-xl">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="py-6 px-8 bg-neutral-0 rounded-4 box-shadow">
          <form action="/accommodation/accommodation_list" method="POST">
            <h4 class="mb-0"> 제목검색 </h4>
            <div class="hr-dashed my-6 opacity-50"></div>
             <div class="d-flex align-items-center justify-content-between rounded-pill border border-neutral-40 bg-primary-3p px-5 py-3">
              <input type="text" class="form-control bg-transparent border-0 focus-outline-0" placeholder="검색어를 입력해주세요" name="keyword">
              <button type="submit" class="border-0 bg-transparent p-0 lh-1">
                <span class="material-symbols-outlined mat-icon clr-neutral-600"> search </span>
              </button>
            </div> 
            </form>
            <div class="hr-dashed my-6 opacity-50"></div>
            <form action="/accommodation/accommodation_list" method="POST">
            <h4 class="mb-0"> 조건검색 </h4>
            <div class="hr-dashed my-6 opacity-50"></div>
            <p class="mb-4 clr-neutral-700 fs-20 fw-medium"> 숙박 </p>
            <ul class="list list-row flex-wrap align-items-center gap-6">
              <li>
                <div class="d-flex align-items-center gap-2">
                  <input class="custom-radio custom-radio--primary-300" type="radio" name="type" id="search-hotel" value="hotel" checked>
                  <label class="d-inline-block fs-18 fw-medium cursor-pointer" for="search-hotel"> 호텔/리조트 </label>
                </div>
              </li>
              <li>
                <div class="d-flex align-items-center gap-2">
                  <input class="custom-radio custom-radio--primary-300" type="radio" name="type" id="search-pension" value="pension">
                  <label class="d-inline-block fs-18 fw-medium cursor-pointer" for="search-pension"> 펜션 </label>
                </div>
              </li>
           
            </ul>
            <div class="hr-dashed my-6 opacity-50"></div>
            <p class="mb-4 clr-neutral-700 fs-20 fw-medium"> 지역 </p>
            <ul class="list gap-4">
              <li>
                <div class="property-search__select property-search__col rounded-pill px-6">
                  <select class="form-select" aria-label="Default select example" name="region" required>
                    <option value="" selected>지역선택</option>
                    <option value="서울">서울</option>
                    <option value="부산">부산</option>
                    <option value="경기">경기</option>
                    <option value="광주">광주</option>
                    <option value="대구/울산">대구/울산</option>
                    <option value="강원">강원</option>
                    <option value="제주">제주</option>
                    <option value="대전">대전</option>
                    <option value="전북/전남">전북/전남</option>
                    <option value="경북/경남">경북/경남</option>
                    <option value="충북/충남">충북/충남</option>
                  </select>
                </div>
              </li>
             
            </ul>
            <div class="hr-dashed my-6 opacity-50"></div>
            <p class="mb-4 clr-neutral-700 fs-20 fw-medium"> 요금(1박)  </p>
            <div class="range-slider">
              <div class="range-slider__progress"></div>
              <span class="range-min-wrapper">
                <input class="range-slider__input range-slider__min" type="range" min="1" max="100" name="min">
              </span>
              <span class="range-max-wrapper">
                <input class="range-slider__input range-slider__max" type="range" min="1" max="100" name="max">
              </span>
            </div>
            <div class="d-flex align-items-center justify-content-center gap-2 mt-3">
              <div class="min-value range-slider__value"><input type="number" min="0" max="100" value="25" disabled>만원 
              </div>
              <span>-</span>
              <div class="max-value range-slider__value"><input type="number" min="0" max="100" value="100" disabled>만원
              </div>
            </div>
            <div class="hr-dashed my-6 opacity-50"></div>
            <button type="submit" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center justify-content-center gap-2 fw-semibold w-100 text-center">
              <span class="material-symbols-outlined mat-icon fw-300"> search </span>찾기</button>
             </form>
          </div>
        </div>
        <div class="col-md-8">
          <div class="row g-4">
            <div class="col-12">
              <div class="bg-neutral-0 rounded-2 py-3 px-6 box-shadow">
                <ul class="list list-row align-items-center flex-wrap gap-3">
                  <li class="d-none d-xl-block">
                    <p class="mb-0 clr-neutral-500">검색 결과: ${ list.size() } </p>
                  </li>
                  
                </ul>
              </div>
            </div>
            <c:forEach var="acmd" items="${ list }">
            <div class="col-12">
              <div class="property-card property-card--row">
                <div class="property-card__head">
                  <div class="property-card__img">
                    <img src="/resources/img1/${ acmd.main_img }" alt="image" class="img-fluid w-100">
                  </div>
                  <a href="property-grid.html" class="link property-card__tag d-inline-block bg-neutral-0 :bg-primary-300 clr-primary-300 :clr-neutral-0 py-2 px-4 rounded-pill fw-medium"> For Sale </a>
                  <button class="property-card__fav w-10 h-10 rounded-circle bg-neutral-0 d-grid place-content-center border-0 clr-primary-300">
                    <span class="material-symbols-outlined mat-icon fw-200 property-card__heart"> favorite </span>
                  </button>
                </div>
                <div class="property-card__content">
                  <div class="property-card__body">
                    <div class="d-flex align-items-center gap-1 mb-4">
                      <span class="material-symbols-outlined mat-icon clr-tertiary-400"> distance </span>
                      <span class="d-inline-block"> ${acmd.address1 } </span>
                    </div>
                    <a href="/accommodation/accommodation_detail" class="link d-block clr-neutral-700 :clr-primary-300 fs-20 fw-medium mb-7"> ${acmd.accommodationName } </a>
                    <ul class="list list-row flex-wrap dotted-divider">
                      <li>
                        <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> home_work </span>
                        <span class="d-block fs-14"> 방: 1 </span>
                      </li>
                      <li>
                        <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bed </span>
                        <span class="d-block fs-14">  더블1, 주니어1 </span>
                      </li>
                      <li>
                        <span class="material-symbols-outlined mat-icon clr-neutral-600 d-inline-block mb-1"> bathtub </span>
                        <span class="d-block fs-14"> 욕실: 1 </span>
                      </li>
                    </ul>
                  </div>
                  <div class="property-card__body py-0">
                    <div class="hr-dashed"></div>
                  </div>
                  <div class="property-card__body">
                    <div class="d-flex flex-wrap justify-content-between align-items-center">
                      <span class="d-block fs-20 fw-medium clr-primary-300"> ${acmd.price } <span class="d-inline-block clr-neutral-500 fs-14 fw-normal"> (1박) </span>
                      </span>
                      <a href="/accommodation/accommodation_detail?accommodationID=${acmd.accommodationID }" class="btn btn-outline-primary py-3 px-6 rounded-pill d-inline-flex align-items-center gap-1 fw-semibold"> 상세보기</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
            
           
            <div class="col-12">
              <nav>
                <ul class="pagination gap-3 justify-content-center">
                  <li class="page-item">
                    <a class="page-link p-0 w-10 h-10 d-grid place-content-center lh-1 rounded-circle border border-primary-300 clr-primary-300" href="#">
                      <span class="material-symbols-outlined mat-icon fs-16"> arrow_back_ios </span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link p-0 w-10 h-10 d-grid place-content-center lh-1 rounded-circle border border-primary-300 clr-neutral-0 :clr-neutral-0 active-bg" href="#">1</a></li>
                  <li class="page-item"><a class="page-link p-0 w-10 h-10 d-grid place-content-center lh-1 rounded-circle border border-primary-300 clr-primary-300" href="#">2</a></li>
                  <li class="page-item"><a class="page-link p-0 w-10 h-10 d-grid place-content-center lh-1 rounded-circle border border-primary-300 clr-primary-300" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link p-0 w-10 h-10 d-grid place-content-center lh-1 rounded-circle border border-primary-300 clr-primary-300" href="#">
                      <span class="material-symbols-outlined mat-icon fs-16"> arrow_forward_ios </span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /Property List -->
 

<%@ include file="/resources/in/footer.jsp" %>
  
</body>

</html>