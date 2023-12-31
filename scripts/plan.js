const dayNames = ['일', '월', '화', '수', '목', '금', '토', '일'];

const createPlanTime = (datetime) => {
  const planTime = document.createElement('span');
  planTime.classList.add('plan-time');

  const datetimeString =
    String(new Date(datetime).getHours()).padStart(2, '0') +
    ':' +
    String(new Date(datetime).getMinutes()).padStart(2, '0');
  planTime.innerHTML = datetimeString;

  return planTime;
};

const createPlanContent = (content) => {
  const planContent = document.createElement('span');
  planContent.classList.add('plan-content');
  planContent.innerHTML = content;

  return planContent;
};

const createPlanButtonImage = (width, height, pathD) => {
  const planEditButtonImage = document.createElementNS(
    'http://www.w3.org/2000/svg',
    'svg'
  );
  planEditButtonImage.setAttribute('width', width);
  planEditButtonImage.setAttribute('height', height);
  planEditButtonImage.setAttribute('viewBox', `0 0 ${width} ${height}`);
  planEditButtonImage.setAttribute('fill', 'none');

  const planEditButtonImagePath = document.createElementNS(
    'http://www.w3.org/2000/svg',
    'path'
  );
  planEditButtonImagePath.setAttribute('d', pathD);
  planEditButtonImagePath.setAttribute('stroke-width', '2');

  planEditButtonImage.appendChild(planEditButtonImagePath);
  return planEditButtonImage;
};

const createPlanEditButton = (planIdx) => {
  const planEditButton = document.createElement('button');
  planEditButton.classList.add('plan-button');
  planEditButton.appendChild(
    createPlanButtonImage('25', '26', 'M23.5 7L19 2L1 20V24.5H6L23.5 7Z')
  );

  planEditButton.addEventListener('click', () => {
    const newPlanPopup = window.open(
      `/stageus-planner/pages/edit-plan.jsp?plan-idx=${planIdx}`,
      '',
      'width=450, height=600'
    );

    newPlanPopup.addEventListener('load', () => {
      const newPlanSubmitButton = newPlanPopup.document.querySelector(
        'input[type="submit"]'
      );
      newPlanSubmitButton.addEventListener('click', () => {
        planSubmitted = true;
      });

      newPlanPopup.addEventListener('unload', () => {
        if (planSubmitted) {
          location.reload();
        }
      });
    });
  });

  return planEditButton;
};

const createPlanDeleteButton = (planIdx) => {
  const planEditButton = document.createElement('a');
  planEditButton.classList.add('plan-button');
  planEditButton.appendChild(
    createPlanButtonImage('25', '26', 'M1 1L25 25M25 1L1 25')
  );
  planEditButton.href = `/stageus-planner/actions/delete-plan.jsp?idx=${planIdx}`;

  return planEditButton;
};

const createPlan = (planIdx, datetime, content, isMyPlan) => {
  const plan = document.createElement('article');
  plan.appendChild(createPlanTime(datetime));
  plan.appendChild(createPlanContent(content));

  if (isMyPlan) {
    plan.appendChild(createPlanEditButton(planIdx));
    plan.appendChild(createPlanDeleteButton(planIdx));
  }

  const planDate = new Date(datetime);
  if (new Date(Date.now()) > planDate) {
    plan.classList.add('past-plan');
  }

  return plan;
};

const createDaySection = (datetime) => {
  const day = new Date(datetime).getDate();
  const dayName = dayNames[new Date(datetime).getDay()];

  const daySection = document.createElement('section');
  daySection.dataset.day = `${day}`;

  const labelArea = document.createElement('div');
  labelArea.classList.add('label-area');
  daySection.appendChild(labelArea);

  const dayLabel = document.createElement('span');
  dayLabel.classList.add('day-label');
  dayLabel.innerHTML = `${day}`;
  labelArea.appendChild(dayLabel);

  const dayNameLabel = document.createElement('span');
  dayNameLabel.classList.add('day-name-label');
  dayNameLabel.innerHTML = `(${dayName})`;
  labelArea.appendChild(dayNameLabel);

  return daySection;
};
