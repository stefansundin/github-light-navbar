// This script adds a search-focused class to the Header element when the search field is focused
// This makes it possible to hide the extra navigation links in the header, and thus make the search field bigger

var header = document.getElementsByClassName("Header")[0];
var q = header.getElementsByClassName("header-search-input")[0];
q.addEventListener("focus", function() {
  header.classList.add("search-focused");
});
q.addEventListener("blur", function() {
  header.classList.remove("search-focused");
});
if (document.activeElement == q) {
  header.classList.add("search-focused");
}
