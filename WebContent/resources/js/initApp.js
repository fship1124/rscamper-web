// 환경설정
var myConfig = {
//	serverUrl: "http://localhost:8081"		
	serverUrl: "http://14.32.66.104:8081"		
};

// 세션 스토리지 서비스
var sessionStorageService = {
	set: function (key, value) {
		sessionStorage.setItem(key, value);
	},
	get: function (key, defaultValue) {
		return sessionStorage.getItem(key);
	},
	setObject: function (key, value) {
		sessionStorage.setItem(key, JSON.stringify(value));
	},
	getObject: function (key) {
		return JSON.parse(sessionStorage.getItem(key));
	},
	remove: function (key) {
		sessionStorage.removeItem(key);
	},
}

// 시작 메소드
jQuery(document).ready(function() {
	App.init();
	OwlCarousel.initOwlCarousel();
	ParallaxSlider.initParallaxSlider();
	menuCreate();
});