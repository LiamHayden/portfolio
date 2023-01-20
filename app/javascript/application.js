// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.mobileNav = function() {
  let hiddenDropdown = document.getElementById("hidden");

  if (hiddenDropdown.style.display == "inherit") {
    hiddenDropdown.style.display = "none";
  } else {
    hiddenDropdown.style.display = "inherit";
  }
}
