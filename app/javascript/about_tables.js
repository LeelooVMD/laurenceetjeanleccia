//------ Tableau 1 avec textes -------
const tabLinks = document.querySelectorAll(".tablinks");
const tabContent = document.querySelectorAll(".tabcontent");
window.onload = function atConnection() {
  tabLinks[0].classList.add('active');
  tabContent[0].classList.add('active');
};

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

//------ Tableau 2 avec biographie -------

const tabLinks2 = document.querySelectorAll(".tablinks2");
const tabContent2 = document.querySelectorAll(".tabcontent2");

tabLinks2.forEach(function (el) {
  el.addEventListener("click", openTabs2);
});

function openTabs2(el) {
  const btnTarget = el.currentTarget;
  const name = btnTarget.dataset.name;

  tabContent2.forEach(function (el) {
    el.classList.remove("active");
  });

  tabLinks2.forEach(function (el) {
    el.classList.remove("active");
  });

  document.getElementById(name).classList.add("active");
  btnTarget.classList.add("active");
}
