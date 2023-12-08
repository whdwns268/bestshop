<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
	long time2 = System.currentTimeMillis();
%>
<link rel="stylesheet" type="text/css" href="./css/shop_product_write.css?v=<%=time2%>">
<div class="prodiv1">
   <ul class="pro_ul1">
      <li>■</li>
      <li>상품 등록 페이지</li>
   </ul>
   <form id="frm" enctype="multipart/form-data">
   <ul class="pro_ul2">
      <li>
         <span>대메뉴 카테고리</span>
         <select class="pro_se1" name="pbig">
            <option value="">카테고리 선택</option>
            <option value="기획상품">기획상품</option>
            <option value="이벤트 상품">이벤트 상품</option>
            <option value="무료배송상품">무료배송상품</option>
            <option value="베스트 상품">베스트 상품</option>
            <option value="이주의 핫딜">이주의 핫딜</option>
         </select>
      </li>
      <li>
         <span>소메뉴 카테고리</span>
         <select class="pro_se1" name="psmall">
            <option value="">카테고리 선택</option>
            <option value="채소/과일/농수산물">채소/과일/농수산물</option>
            <option value="간식/간편음식">간식/간편음식</option>
            <option value="베이커리/우유">베이커리/우유</option>
            <option value="냉장고/김치냉장고">냉장고/김치냉장고</option>
            <option value="주방용품/생활가전">주방용품/생활가전</option>
            <option value="컴퓨터/스마트폰">컴퓨터/스마트폰</option>
            <option value="공기청정기">공기청정기</option>
         </select>
      </li>
      <li>
         <span>상품코드</span>
         <input type="text" class="prin120" name="pcode">
         <input type="button" value="중복확인" onclick="pcodeck()" class="prbtn1">
         <div>※ 상품코드는 절대 중복되지 않도록 합니다.</div>
      </li>
      <li>
         <span>상품명</span>
         <input type="text" class="prin250" name="pname">
         <div>※ 상품명은 최대 100자까지만 적용할 수 있습니다.</div>
      </li>
      <li>
         <span>상품 부가설명</span>
         <input type="text" class="prin500" name="pexplain">
         <div>※ 상품명은 최대 200자까지만 적용할 수 있습니다.</div>
      </li>
      <li>
         <span>판매가격</span>
         <input type="text" class="prin100" name="pprice" onkeyup="price(this.value)">
         <div>※,없이 숫자만 입력하세요 최대 7자리</div>
      </li>
      <li>
         <span>할인율</span>
         <input type="text" class="prin100" placeholder="0" name="pdiscount" onkeyup="discount(this.value)">
         <div> % ※ 숫자만 입력하세요</div>
      </li>
      <li>
         <span>할인가격</span>
         <input type="text" class="prin100" placeholder="0" name="pdisprice">
         <div>※ 할인율이 0%일 경우 할인가격은 0으로 처리 합니다.</div>
      </li>
      <li>
         <span>상품재고</span>
         <input type="text" class="prin100" placeholder="0" name="pea" onkeyup="peack(this.value)">
         <div>EA ※ 숫자만 입력하세요. 재고가 0일 경우 soldout이 됩니다.</div>
      </li>
      <li>
         <span>판매 유/무</span>
         <label class="prola"><input type="radio" value="Y" name="pbuy" checked>판매시작</label>
         <label class="prola"><input type="radio" value="N" name="pbuy">판매종료</label>
         <div>※ 숫자만 입력하세요. 재고가 0일 경우 soldout이 됩니다.</div>
      </li>
      <li>
         <span>조기품절</span>
         <label class="prola"><input type="radio" value="Y" name="psold">사용</label>
         <label class="prola"><input type="radio" value="N" name="psold" checked>미사용</label>
      </li>
      <li>
         <span>상품 대표이미지</span>
            <ul>
               <li>
                  <input type="file" name="files">
                  <input type="hidden" name="hiddenFilename" id="hiddenFilename">
                  <div class="prdi2">※ 상품 대표이미지 이며, 이미지 용량은 2MB 까지 입니다.</div>
               </li>
               <li>
                  <input type="file" name="files">
                  <div class="prdi2">※ 추가 이미지 이며, 이미지 용량은 2MB 까지 입니다.</div>
               </li>
                  <li>
                  <input type="file" name="files">

                  <div class="prdi2">※ 추가 이미지 이며, 이미지 용량은 2MB 까지 입니다.</div>
               </li>
            </ul>   
      </li>
      <li>
         <span>상품 상세설명</span>
         <textarea id="prtx1" class="prtx1" name="ptext"></textarea>
      </li>
   </ul>
   <div class="prdi3">
      <input type="button" value="상품 리스트" class="prbtn2" onclick="prolist()">
      <input type="button" value="상품 등록" class="prbtn3" onclick="progo()">
   </div>
   </form>
</div>
<script src="../ckeditor/ckeditor.js"></script>
<script src="./js/shop_product_write.js?v=<%=time2%>"></script>
<script>
CKEDITOR.replace('prtx1', {
     width: '700px',
     height: '300px',
     filebrowserUploadUrl: "./imageupload.do"
   });
CKEDITOR.instances['prtx1'].config.resize_enabled = false;
</script>
