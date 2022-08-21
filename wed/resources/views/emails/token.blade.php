<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Account Token -- {{ $sitelink }}</title>
    <!-- Bootstrap CSS -->
    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
      <!-- Favicon icon -->
     <link rel="shortcut icon" type="image/x-icon" href="{{ asset('assets/images/favicon.io') }}">

    <link rel="stylesheet" href="{{ asset('assets/email/style.css') }}" type="text/css">
</head>

<body>
    <div style="background: #333; height: 300px;"></div>
    <table border="0" cellpadding="0" cellspacing="0" class="body">
        <tr>
            <td>&nbsp;</td>
            <td class="container">
                <div class="content">
                    <!-- START CENTERED WHITE CONTAINER -->
                    <table class="main">
                        <!-- START MAIN CONTENT AREA -->
                        <tr>
                            <td class="wrapper">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <a href="{{ $sitelink }}" class="template-logo"><img src="{{ asset('assets/images/index/itheewedLogo.png') }}" alt=""></a>
                                            <p class="lead"><strong>Hi, {{ $name }}. </strong> Below is your  Account verification token
                                            </p>
                                            <table border="0" cellpadding="0" cellspacing="0" class="">
                                                <tbody>
                                                    <tr>
                                                        <td align="center" class="mt30 mb30">
                                                            <table border="0" cellpadding="0" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            <p class="user-text"> <h1 style="margin-bottom: 0px;"> <strong style="letter-spacing: 34px;">{{ $token }}</strong></h1>
                                                                              </p>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <p class=" mb0">Please, kindly Enter the verification token in Your application to activate your account . </p>
                                            <p><strong>Thank you</strong></p>
                                            <p class="mb0">If you have any problems, please contact me at <a href="#" class="click-link">{{ $contact_email }}</a> </p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- END MAIN CONTENT AREA -->
                    </table>
                    <table class="help-section">
                        <!-- START MAIN CONTENT AREA -->
                        <!-- <tr>
                            <td class="wrapper">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <h2 class="text-center mb0">Need more help?</h2>
                                            <a href="#" class="support-link">We're here,ready to here</a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr> -->
                        <!-- END MAIN CONTENT AREA -->
                    </table>
                    <table>
                        <!-- START MAIN CONTENT AREA -->
                        <tr>
                            <td class="wrapper">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <p>You received this email beacuse you just signed up for new account. If it look weird
                                                <a href="#" class="default-link">view it in your browser</a></p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- END MAIN CONTENT AREA -->
                    </table>
                    <!-- START FOOTER -->
                    <div class="footer">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="content-block">
                                    <p class="text-center">© {{ date('Y') }} {{ $address }}
                                        {{-- <br> If these emails get annoying, please feel to <a href="#">unsubscribe</a> --}}
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- END FOOTER -->
                    <!-- END CENTERED WHITE CONTAINER -->
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
</body>

</html>
