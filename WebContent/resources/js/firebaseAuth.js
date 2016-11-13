// 이메일 로그인
function signinEmail() {
    if (firebase.auth().currentUser) {
        firebase.auth().signOut();
    } else {
        var email = document.getElementById('signin-email').value;
        var password = document.getElementById('signin-password').value;

        firebase.auth().signInWithEmailAndPassword(email, password).catch(function(error) {
            var errorCode = error.code;
            var errorMessage = error.message;
            if (errorCode === 'auth/wrong-password') {
                alert('로그인 실패 : 비밀번호가 잘못되었습니다.');
            } else {
                alert('로그인 실패 : ' + errorMessage);
            }
            console.log(error);
        });
    }
};

// 이메일 회원가입
function signupEmail() {
    var displayName = document.getElementById('signup-username').value;
    var email = document.getElementById('signup-email').value;
    var password = document.getElementById('signup-password').value;
    firebase.auth().createUserWithEmailAndPassword(email, password)
        .then(function (result) {

            // 회원가입 성공시 처리
            // 유저정보 가져와서 이름 업데이트
            var user = firebase.auth().currentUser;
            user.updateProfile({
                displayName: displayName
            }).then(function () {
                console.log(displayName);
            }, function (error) {
                console.log(error);
            });

            // 2. 모달창 닫기
            $('.cd-user-modal').removeClass('is-visible');

            // 3. 인증메일 보내기
            sendEmailVerification();
            alert('인증 메일 확인후 이용하실수 있습니다.');
            signout();
        })
        .catch(function (error) {
            // 회원가입 에러 처리
            var errorCode = error.code;
            var errorMessage = error.message;
            if (errorCode == 'auth/weak-password') {
                alert('회원가입 실패 : 패스워드가 단순함');
            } else {
                alert('회원가입 실패 : ' + errorMessage);
            }
            console.log(error);
            return;
    });
};

// 로그아웃
function signout() {
    firebase.auth().signOut();
};

// 인증 이메일 보내는 함수
function sendEmailVerification() {
    firebase.auth().currentUser.sendEmailVerification().then(function() {
        alert('인증메일이 발송되었습니다.!');
    });
}

// 비번 재생성 메일 보내는 함수
function sendPasswordReset() {
    var email = document.getElementById('reset-email').value;
    firebase.auth().sendPasswordResetEmail(email).then(function() {
        alert('비밀번호 초기화 메일이 발송 되었습니다. 이메일을 확인해 주세요!');
        $('.cd-user-modal').removeClass('is-visible');
    }).catch(function(error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        if (errorCode == 'auth/invalid-email') {
            alert("잘못된 이메일 주소입니다.");
        } else if (errorCode == 'auth/user-not-found') {
            alert("요청한 이메일이 존재하지 않습니다.");
        }
        console.log(error);
    });
}

// TODO: 회원탈퇴
function resignAccount() {
    // 1. 로그아웃처리
    // 2. 회원탈퇴 DB처리
    // 3. firebase 회원탈퇴처리
};

// TODO: 로그인 폼 유효성 검사
function validSignin() {
    // 1. email유효성검사
    // 2. 비밀번호 유효성검사
};

// TODO: 회원가입 폼 유효성 검사
function validSignup() {
    // 1. email유효성검사
    // 2. 비밀번호 유효성검사
    // 3. displayName 유효성 검사
};

// 통합 외부 로그인 인증
function signinProvider(providerName) {
    console.dir(firebase);
    if (!firebase.auth().currentUser) {
        switch(providerName) {
            case "google":
                var provider = new firebase.auth.GoogleAuthProvider();
                provider.addScope('https://www.googleapis.com/auth/plus.login');
                break;
            case "facebook":
                var provider = new firebase.auth.FacebookAuthProvider();
                provider.addScope('user_birthday');
                break;
            case "twitter":
                var provider = new firebase.auth.TwitterAuthProvider();
                break;
        };

        firebase.auth().signInWithPopup(provider).then(function(result) {
            var token = result.credential.accessToken;
            var user = result.user;
            var secret;  // 트위터용
            if (result.credential.secret) {
                secret = result.credential.secret;
            }
        }).catch(function(error) {
            // Handle Errors here.
            var errorCode = error.code;
            var errorMessage = error.message;
            var email = error.email;
            var credential = error.credential;
            if (errorCode === 'auth/account-exists-with-different-credential') {
                alert('You have already signed up with a different auth provider for that email.');
            } else {
                console.error(error);
            }
        });
    } else {
        firebase.auth().signOut();
    }
};


// 로그인과 로그아웃 상태 감지
function initApp() {
    firebase.auth().onAuthStateChanged(function(user) {
        if (user) {
        	sessionStorage.setItem('uid', user.uid);
            // 로그인 상태 처리
            var displayName = user.displayName;
            var email = user.email;
            var emailVerified = user.emailVerified;
            var photoURL = user.photoURL;
            var isAnonymous = user.isAnonymous;
            var uid = user.uid;
            var providerData = user.providerData[0];
//            console.log(JSON.stringify(user, null, '  '));

            //  로그인 모달창 닫기
            $('.cd-user-modal').removeClass('is-visible');

            // 1. 이메일 로그인일 경우 로그아웃 시키고 이메일 인증 하라고 안내
            if (providerData.providerId == 'password') {
                if (!emailVerified) {
                    alert('로그인실패 : 이메일 인증을 해주시기 바랍니다.');
                    signout();
                    return;
                }
            }

            // TODO: 인증 사용자 정보 DB에 저장(있으면 update 없으면 insert)
            /*
            $ajax({
                url: "회원업보업데이트 BACKEND URL",
                type: "POST",
                data: {
                    displayName: displayName,
                    email: email,
                    photoURL: photoURL,
                    uid: uid,
                    providerData: providerData
                }
            }).done(function(result) {
                // 업데이트 완료시 동작
            });
            */

            // UI 로그인상태로 변경
            $('#loginBtn').css('display', 'none');
            $('#logoutBtn').css('display', 'inline');
            $('#mypage').css('display', 'block');

            if (displayName == null) {
                alert("사용자명 등록해야함");
            } else {
                $('#mypageTitle').html(displayName);
            }

        } else {
            // UI 로그아웃상태로 변경
            $('#loginBtn').css('display', 'inline');
            $('#logoutBtn').css('display', 'none');
            $('#mypage').css('display', 'none');
            $('#mypageTitle').html('마이페이지');
        }
    });

    // 로그인 관련 이벤트 등록
    $('#signin-email-btn').on('click', signinEmail);
    $('#signup-email-btn').on('click', signupEmail);
    $('#reset-password-btn').on('click', sendPasswordReset);
}

window.onload = function() {
    initApp();
};
