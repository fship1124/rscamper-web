// 서비스
tourPlanApp
// 설정 정보 관련 서비스
  .factory("MyConfig", function () {
    return {
      backEndURL: "http://14.32.66.104:8081", // 학원 서버 컴퓨터 외부
      // backEndURL: "http://192.168.0.9:8081", // 학원 서버 컴퓨터 로컬
      // backEndURL: "http://192.168.0.228:8081", // 학원 내컴퓨터
      // backEndURL: "http://192.168.1.13:8081", // 집
    };
  })
//
