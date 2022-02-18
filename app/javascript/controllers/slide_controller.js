import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["left", "right"]

  changeleft() {
    const display1 = document.querySelector('.pictures1')
    const display2 = document.querySelector('.pictures2')
    display1.classList.remove('d-none')
    display2.classList.add('d-none')

  }
  changeright() {
    const display1 = document.querySelector('.pictures1')
    const display2 = document.querySelector('.pictures2')
    display2.classList.remove('d-none')
    display1.classList.add('d-none')

  }
}
