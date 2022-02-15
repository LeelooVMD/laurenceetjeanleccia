// tabs



const tabLinks = document.querySelectorAll(".tablinks");
const tabContent = document.querySelectorAll(".tabcontent");


// tabLinks.forEach((tab) => {
//   console.log(tab)
//   // Object.values(tabContent).filter((content) => {
//   //   // console.log(content.innerText)
//   //   content.innerText.includes(btnTarget.innerText);
//   // });
//   // tab.dataset.country += (1).toString()
//   // tab.dataset.title += (1).toString()
//   // recuperer chaque tab et lui ajouter un data country et data title avec un numéro

// })
// console.log(tabLinks)
// console.log(('<h3>Laurence Leccia – 2015</h3>').includes('Laurence Leccia – 2015'));

// pour chaque tabContent associer le même id que au tablinks
// ex: id=tabLinks.data.country


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
