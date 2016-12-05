<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="rscamper">
<meta name="author" content="rscamper">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/headers/header-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css"
	id="style_color">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/custom.css">
</head>
<body>
	<div class="col-md-6">
		<form action="#" id="sky-form2" class="sky-form">
			<header>Login form</header>

			<fieldset>
				<section>
				<div class="row">
					<label class="label col col-4">E-mail</label>
					<div class="col col-8">
						<label class="input"> <i class="icon-append fa fa-user"></i>
							<input type="email" name="email">
						</label>
					</div>
				</div>
				</section>

				<section>
				<div class="row">
					<label class="label col col-4">Password</label>
					<div class="col col-8">
						<label class="input"> <i class="icon-append fa fa-lock"></i>
							<input type="password" name="password">
						</label>
						<div class="note">
							<a href="#sky-form2" class="modal-opener">Forgot password?</a>
						</div>
					</div>
				</div>
				</section>

				<section>
				<div class="row">
					<div class="col col-4"></div>
					<div class="col col-8">
						<label class="checkbox"><input type="checkbox"
							name="remember" checked><i></i>Keep me logged in</label>
					</div>
				</div>
				</section>
			</fieldset>
			<footer>
			<button type="submit" class="btn-u">Log in</button>
			<a href="#" class="btn-u btn-u-default">Register</a> </footer>
		</form>
		
									<form action="demo-recovery.php" id="sky-form1" class="sky-form sky-form-modal">
								<header>Password recovery</header>

								<fieldset>
									<section>
										<label class="label">E-mail</label>
										<label class="input">
											<i class="icon-append icon-user"></i>
											<input type="email" name="email" id="email">
										</label>
									</section>
								</fieldset>

								<footer>
									<button type="submit" name="submit" class="button">Submit</button>
									<a href="#" class="button button-secondary modal-closer">Close</a>
								</footer>

								<div class="message">
									<i class="rounded-x fa fa-check"></i>
									<p>Your request successfully sent!<br><a href="#" class="modal-closer">Close window</a></p>
								</div>
							</form>
						</div>
</body>
</html>