/**
 * cookie.js
 */

function setCookie(cname, cvalue, exdays) {
  let now = new Date();
  now.setDate(now.getDate() + exdays); //오늘부터 exdays일 동안
  let expires = now.toUTCString();
  document.cookie = `${cname}=${encodeURIComponent(
    cvalue
  )}; expires=${expires}; path=/`;
}


function setCookie(cname, cvalue, exdays, path) {
  let now = new Date();
  now.setDate(now.getDate() + exdays); 
  let expires = now.toUTCString();
  document.cookie = `${cname}=${encodeURIComponent(
    cvalue
  )}; expires=${expires}; path=${path}`;
}



function getAllCookie() {
  let cookies = document.cookie;
  return cookies;
}


function getCookie(cname) {
  let cookies = document.cookie;
  let cvalue;
  let pattern = /;\s/;
  let cookieArr = cookies.split(pattern);
  cookieArr.forEach(function (element, index, array) {
    let cnvArr = element.split("=");
    if (cnvArr[0] == cname) {
      cvalue = unescape(cnvArr[1]);
      return cvalue;
    }
  });
  if (cvalue) {
    return cvalue;
  } else {
    //빈 문자열이라면
    return null;
  }
} //getCookie()


function delCookie(cname, path) {
  let now = new Date();
  now.setDate(now.getDate() - 10); //10일 전
  let expires = now.toUTCString(); //만기 날짜
  document.cookie = `${cname}=; expires=${expires}; path=${path}`;
}