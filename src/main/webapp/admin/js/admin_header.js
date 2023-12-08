function logout(){
location.href="./logout.do";
}
document.addEventListener('DOMContentLoaded', function() {
  document.querySelector(".header_ul1").addEventListener("click", function() {
	 location.href="./admin_main.do";
  }, true);
});