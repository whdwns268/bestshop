function settinggo(){
location.href="./config_form.do";
}
document.addEventListener('DOMContentLoaded', function() {
  document.querySelector("#membergo").addEventListener("click", function() {
	 location.href="./member_list.do?currentPage=1";
  }, true);
  
    document.querySelector("#noticego").addEventListener("click", function() {
	 location.href="./notice_list.do";
  }, true);

  
      document.querySelector("#noticego").addEventListener("click", function() {
	 location.href="./notice_list.do";
  }, true);

  
        document.querySelector("#shopsetupgo").addEventListener("click", function() {
	 location.href="./shop_setup.do";
  }, true);
  
  document.querySelector("#shopproduct").addEventListener("click", function() {
	 location.href="./shop_product.do";
  }, true);

  });