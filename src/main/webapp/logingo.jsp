<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
long time = System.currentTimeMillis();
%>
<link href="./css/Login.css" rel="stylesheet">

	<div class="container">
           <div class="contents">
               <span>
                   HOME ▶ 로그인
               </span>
               <div class="sub_cotents">
                   <span>로그인</span>
                   <div class="member_info">
                       <h3>회원 로그인</h3>
                       <ul>
                           <li>
								<form id="userfrm" method="get" onsubmit="return logingo()">
                               <div class="member_login_box">
                                   <span>
                                       <input type="text" class="login_input" name="sid" id="sid" placeholder="아이디를 입력하세요!">
                                   </span>
                                   <span>
                                       <input type="password" class="login_input" name="spass" id="spass" placeholder="패스워드를 입력하세요!">
                                   </span>
                                   <button type="submit" class="login_btn" title="회원 로그인">로그인</button>
                               </div>
                                </form>
                           </li>
                           <li>
                               <label class="id_save"><input type="checkbox" id="ck" onclick="idck(this.checked)"> 아이디 저장</label>
                           </li>
                       </ul>
                       <h3 class="none"></h3>
                       <ol class="btn_login_box">
                           <li>
                           <input type="button" value="회원가입" onclick="member_join()" class="btn_box1" title="회원가입">
                           </li>
                           <li>
                           <input type="button" value="아이디 찾기" onclick="id_search()" class="btn_box1 reserve1" title="아이디 찾기">
                           </li>
                           <li>
                           <input type="button" value="비밀번호 찾기" onclick="pw_search()" class="btn_box1 reserve1" title="비밀번호 찾기">
                           </li>
                       </ol>

                       <h3>비회원 로그인</h3>
                       <ul>
                           <li>
                               <div class="member_login_box">
                               <form id="frm" method="get" onsubmit="return non_ckgo()">
                                   <span>
                                       <input type="text" class="login_input" name="non_uname" id="non_uname" placeholder="주문자명">
                                   </span>
                                   <span>
                                       <input type="text" class="login_input" name="non_orderno" id="non_orderno" placeholder="주문번호" maxlength="8">
                                   </span>
                                   <button type="submit" class="login_btn reserve1" title="비회원 로그인">확인</button>
                               </form>
                               </div>
                           </li>
                           <li style="font-size: 12px; height: 40px; line-height: 40px;">
                               ※ 주문번호와 비밀번호를 잊으신 경우, 고객센터로 문의하여 주시기 바랍니다.
                           </li>
                       </ul>
                   </div>
               </div>
           </div>
   	</div>	

<script src="./js/Login.js?v=<%=time%>"></script>