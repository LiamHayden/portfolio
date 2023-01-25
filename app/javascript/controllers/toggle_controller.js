import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "hamburger", "close"];
  static values = {isOpen: { type: Boolean, default: false } };

  menu() {
    this.isOpenValue ? this.hide() : this.show();
    this.isOpenValue = !this.isOpenValue
  }

  show() {
    this.menuTarget.style.display = "block";
    this.hamburgerTarget.style.display = "none";
    this.closeTarget.style.display = "inline-block";
  }

  hide() {
    this.menuTarget.style.display = "none";
    this.hamburgerTarget.style.display = "inline-block";
    this.closeTarget.style.display = "none";
  }

}
