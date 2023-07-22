<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Planner</title>

    <link rel="shortcut icon" type="image/x-icon" href="/stageus-planner/favicon.png"/>
    <link rel="stylesheet" href="/stageus-planner/styles/general.css" />
    <link rel="stylesheet" href="/stageus-planner/styles/planner.css" />
  </head>
  <body>
    <div class="logo-area">
      <div class="logo-area-section">
        <a href="/stageus-planner" class="logo">
          <img src="/stageus-planner/imgs/Stageus Logo.png" />
        </a>
        <a class="new-plan-button">새 일정</a>
      </div>
      <button id="nav-button" class="hamburger-button">
        <svg
          width="22"
          height="17"
          viewBox="0 0 22 17"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <line
            x1="1.5"
            y1="1.5"
            x2="20.5"
            y2="1.5"
            stroke="white"
            stroke-width="3"
            stroke-linecap="round"
          />
          <line
            x1="1.5"
            y1="8.5"
            x2="20.5"
            y2="8.5"
            stroke="white"
            stroke-width="3"
            stroke-linecap="round"
          />
          <line
            x1="1.5"
            y1="15.5"
            x2="20.5"
            y2="15.5"
            stroke="white"
            stroke-width="3"
            stroke-linecap="round"
          />
        </svg>
      </button>
    </div>
    <div class="filter-menu">
      <div class="filter-area">
        <a id="year-decrease-button" class="year-modifier-button">
          <svg
            width="22"
            height="27"
            viewBox="0 0 22 27"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M1.72911e-07 13.5L21.75 0.942631L21.75 26.0574L1.72911e-07 13.5Z"
              fill="#1A1D63"
            />
          </svg>
        </a>
        <div id="year-selector" class="filter-menu-selector">
          <span id="year-selector-text" class="filter-menu-selector-text">
          </span>
          <svg
            width="15"
            height="9"
            viewBox="0 0 15 9"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path d="M1.5 1L7.5 7L13.5 1" stroke="white" stroke-width="2" />
          </svg>
        </div>
        <span class="filter-menu-label">년</span>
        <a id="year-increase-button" class="year-modifier-button">
          <svg
            width="22"
            height="27"
            viewBox="0 0 22 27"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M22 13.5L0.250001 26.0574L0.250002 0.942631L22 13.5Z"
              fill="#1A1D63"
            />
          </svg>
        </a>
        <div id="year-modal-selectbox" class="modal-selectbox">
          <button
            id="year-modal-selectbox-left-scroll-button"
            class="year-modal-selectbox-scroll-button"
          >
            <
          </button>
          <button
            id="year-modal-selectbox-right-scroll-button"
            class="year-modal-selectbox-scroll-button"
          >
            >
          </button>
        </div>
      </div>
      <div class="filter-area">
        <div id="month-selector" class="filter-menu-selector">
          <span id="month-selector-text" class="filter-menu-selector-text">
          </span>
          <svg
            width="15"
            height="9"
            viewBox="0 0 15 9"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path d="M1.5 1L7.5 7L13.5 1" stroke="white" stroke-width="2" />
          </svg>
        </div>
        <span class="filter-menu-label">월</span>
        <div id="month-modal-selectbox" class="modal-selectbox">
          <a class="modal-selectbox-item modal-selectbox-item-selected">01</a>
          <a class="modal-selectbox-item">02</a>
          <a class="modal-selectbox-item">03</a>
          <a class="modal-selectbox-item">04</a>
          <a class="modal-selectbox-item">05</a>
          <a class="modal-selectbox-item">06</a>
          <a class="modal-selectbox-item">07</a>
          <a class="modal-selectbox-item">08</a>
          <a class="modal-selectbox-item">09</a>
          <a class="modal-selectbox-item">10</a>
          <a class="modal-selectbox-item">11</a>
          <a class="modal-selectbox-item">12</a>
        </div>
      </div>
    </div>
    <main>
      <section>
        <span class="day-label">9일</span>
        <span class="day-name-label">(화)</span>
        <hr class="devider" />
        <article class="past-plan">
          <span class="plan-time">09:10</span>
          <span class="plan-content">준비 시간</span>
          <button class="plan-button">
            <svg
              width="25"
              height="26"
              viewBox="0 0 25 26"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path d="M23.5 7L19 2L1 20V24.5H6L23.5 7Z" stroke-width="2" />
            </svg>
          </button>
          <button class="plan-button">
            <svg
              width="26"
              height="26"
              viewBox="0 0 26 26"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path d="M1 1L25 25M25 1L1 25" stroke-width="2" />
            </svg>
          </button>
        </article>
      </section>
      <section>
        <span class="day-label">10일</span>
        <span class="day-name-label">(수)</span>
        <hr class="devider" />
        <article>
          <span class="plan-time">09:10</span>
          <span class="plan-content">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur
            sed hendrerit tortor. D
          </span>
          <button class="plan-button">
            <svg
              width="25"
              height="26"
              viewBox="0 0 25 26"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path d="M23.5 7L19 2L1 20V24.5H6L23.5 7Z" stroke-width="2" />
            </svg>
          </button>
          <button class="plan-button">
            <svg
              width="26"
              height="26"
              viewBox="0 0 26 26"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path d="M1 1L25 25M25 1L1 25" stroke-width="2" />
            </svg>
          </button>
        </article>
      </section>
    </main>
    <nav>
      <div class="nav-menu">
        <div class="nav-menu-profile">
          <h1>내 정보</h1>
          <div class="nav-menu-profile-row">
            <span class="nav-menu-profile-row-label">메일</span>
            <span class="nav-menu-profile-row-value">example@example.com</span>
          </div>
          <div class="nav-menu-profile-row">
            <span class="nav-menu-profile-row-label">이름</span>
            <span class="nav-menu-profile-row-value">스어스</span>
          </div>
          <div class="nav-menu-profile-row">
            <span class="nav-menu-profile-row-label">전화번호</span>
            <span class="nav-menu-profile-row-value">01012341234</span>
          </div>
          <div class="nav-menu-profile-row">
            <span class="nav-menu-profile-row-label">직급</span>
            <span class="nav-menu-profile-row-value">팀장</span>
          </div>
        </div>
        <div class="nav-menu-member-list">
          <h1>직원 목록</h1>
          <div class="nav-menu-member-list-content">
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
            <a class="nav-menu-member-button" href="#">
              직원1 (example@example.com)
            </a>
          </div>
        </div>
        <div class="nav-menu-signout-button">로그아웃</div>
      </div>
    </nav>
  </body>
  <script>
    const getURLParam = (paramNameToFind) => {
      // ...://location/to/the/page ? paramNameToFind=value&other=value
      const queryString = window.location.href.split('?')[1];
      if (queryString === undefined) return undefined;

      // paramNameToFind=value & other=value
      const params = queryString.split('&');

      for (let param of params) {
        // paramNameToFind = value
        const paramName = param.split('=')[0];
        const paramValue = param.split('=')[1];

        if (paramName == paramNameToFind) return paramValue;
      }

      return undefined;
    };

    // date filter init
    const dateNow = new Date(Date.now());
    const filterYear = String(getURLParam('year') ?? dateNow.getFullYear());
    const filterMonth =
      getURLParam('month')?.padStart(2, '0') ??
      String(dateNow.getMonth() + 1).padStart(2, '0');

    const yearText = document.getElementById('year-selector-text');
    yearText.innerHTML = filterYear;
    const monthText = document.getElementById('month-selector-text');
    monthText.innerHTML = filterMonth;

    // year filter
    const yearSelectButton = document.getElementById('year-selector');
    const yearModalSelectBox = document.getElementById('year-modal-selectbox');
    yearModalSelectBox.style.display = 'none';

    const showYearModalSelectBox = () => {
      yearModalSelectBox.style.display = '';
      const contentItems = document.getElementsByClassName(
        'year-modal-selectbox-content'
      );
      Array.from(contentItems).forEach((item) => {
        item.style.display = '';
      });
      yearSelectButton.removeEventListener('click', showYearModalSelectBox);
      yearSelectButton.addEventListener('click', hideYearModalSelectBox);
      hideMonthModalSelectBox();
    };
    const hideYearModalSelectBox = () => {
      yearModalSelectBox.style.display = 'none';
      const contentItems = document.getElementsByClassName(
        'year-modal-selectbox-content'
      );
      Array.from(contentItems).forEach((item) => {
        item.style.display = 'none';
      });
      yearSelectButton.removeEventListener('click', hideYearModalSelectBox);
      yearSelectButton.addEventListener('click', showYearModalSelectBox);
    };
    yearSelectButton.addEventListener('click', showYearModalSelectBox);

    // year filter modifier buttons
    const yearDecreaseButton = document.getElementById('year-decrease-button');
    yearDecreaseButton.href = `/stageus-planner/planner.html?year=${
      Number(filterYear) - 1
    }&month=${filterMonth}`;
    const yearIncreaseButton = document.getElementById('year-increase-button');
    yearIncreaseButton.href = `/stageus-planner/planner.html?year=${
      Number(filterYear) + 1
    }&month=${filterMonth}`;

    // year filter content
    let currentYearModalSelectBoxIndex = 0;
    let yearModalSeletBoxContents = {};
    const createYearModalSelectBoxContent = (yearStart, index) => {
      const contentPosition = `${20 + 236 * index}px`;
      const yearModalSelectBoxContent = document.createElement('div');
      yearModalSelectBoxContent.classList.add('year-modal-selectbox-content');
      yearModalSelectBoxContent.style.left = contentPosition;
      for (let year = yearStart; year < yearStart + 16; year++) {
        const yearButton = document.createElement('a');
        yearButton.classList.add('modal-selectbox-item');
        yearButton.innerHTML = String(year);
        yearButton.href = `/stageus-planner/planner.html?year=${yearButton.innerText}&month=${filterMonth}`;
        if (year === Number(filterYear)) {
          yearButton.classList.add('modal-selectbox-item-selected');
        }
        // yearButton.href = `/planner.jsp?year=${year}&month=${filterMonth}
        yearModalSelectBoxContent.appendChild(yearButton);
      }
      yearModalSeletBoxContents[index] = yearModalSelectBoxContent;

      return yearModalSelectBoxContent;
    };

    for (let i = -5; i < 6; i++) {
      yearModalSelectBox.appendChild(
        createYearModalSelectBoxContent(Number(filterYear) + 16 * i, i)
      );
    }

    // year filter transition
    const yearFilterLeftScrollButton = document.getElementById(
      'year-modal-selectbox-left-scroll-button'
    );
    yearFilterLeftScrollButton.addEventListener('click', () => {
      if (
        yearModalSeletBoxContents[currentYearModalSelectBoxIndex - 1] !==
        undefined
      ) {
        currentYearModalSelectBoxIndex--;
        for (let index of Object.keys(yearModalSeletBoxContents)) {
          yearModalSeletBoxContents[index].style.left = `${
            20 + 236 * (index - currentYearModalSelectBoxIndex)
          }px`;
        }
      }
    });
    const yearFilterRightScrollButton = document.getElementById(
      'year-modal-selectbox-right-scroll-button'
    );
    yearFilterRightScrollButton.addEventListener('click', () => {
      if (
        yearModalSeletBoxContents[currentYearModalSelectBoxIndex + 1] !==
        undefined
      ) {
        currentYearModalSelectBoxIndex++;
        for (let index of Object.keys(yearModalSeletBoxContents)) {
          yearModalSeletBoxContents[index].style.left = `${
            20 + 236 * (index - currentYearModalSelectBoxIndex)
          }px`;
        }
      }
    });

    // month filter
    const monthSelectButton = document.getElementById('month-selector');
    const monthModalSelectBox = document.getElementById(
      'month-modal-selectbox'
    );
    monthModalSelectBox.style.display = 'none';

    const showMonthModalSelectBox = () => {
      monthModalSelectBox.style.display = '';
      monthSelectButton.removeEventListener('click', showMonthModalSelectBox);
      monthSelectButton.addEventListener('click', hideMonthModalSelectBox);
      hideYearModalSelectBox();
    };
    const hideMonthModalSelectBox = () => {
      monthModalSelectBox.style.display = 'none';
      monthSelectButton.removeEventListener('click', hideMonthModalSelectBox);
      monthSelectButton.addEventListener('click', showMonthModalSelectBox);
    };
    monthSelectButton.addEventListener('click', showMonthModalSelectBox);

    const monthButtons = Array.from(
      document.querySelectorAll(
        '#month-modal-selectbox > .modal-selectbox-item'
      )
    );
    monthButtons.forEach((monthButton) => {
      monthButton.href = `/stageus-planner/planner.html?year=${filterYear}&month=${monthButton.innerText}`;
    });

    // nav
    const nav = document.getElementsByTagName('nav')[0];
    nav.style.display = 'none';
    const navButton = document.getElementById('nav-button');

    const showNav = () => {
      nav.style.display = '';
      navButton.removeEventListener('click', showNav);
      navButton.addEventListener('click', hideNav);
    };
    const hideNav = () => {
      nav.style.display = 'none';
      navButton.removeEventListener('click', hideNav);
      navButton.addEventListener('click', showNav);
    };
    navButton.addEventListener('click', showNav);
  </script>
</html>