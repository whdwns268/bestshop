
// 스크롤이 있는 경우 스크롤을 맨 아래로 내리는 함수
function scrollToBottom() {
  window.scrollTo(0, document.body.scrollHeight);
}

// 페이지 로딩이 완료되면 실행되는 이벤트 핸들러
window.onload = function() {
  const footer = document.getElementById('footer');
  const hasVerticalScrollbar = footer.offsetHeight < footer.scrollHeight;

  // 스크롤이 있는 경우에만 스크롤을 맨 아래로 내리는 함수 호출
  if (hasVerticalScrollbar) {
    scrollToBottom();
  }
};
