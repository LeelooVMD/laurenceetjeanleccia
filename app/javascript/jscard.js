// tabs

const tabLinks = document.querySelectorAll(".tablinks");
const tabContent = document.querySelectorAll(".tabcontent");
tabLinks[0].classList.add('active');
tabContent[0].classList.add('active');


tabLinks.forEach(function (el) {
  el.addEventListener("click", openTabs);
});

function openTabs(el) {
  const btnTarget = el.currentTarget;
  const name = btnTarget.dataset.name;

  tabContent.forEach(function (el) {
    el.classList.remove("active");
  });

  tabLinks.forEach(function (el) {
    el.classList.remove("active");
  });

  document.getElementById(name).classList.add("active");
  btnTarget.classList.add("active");
}
