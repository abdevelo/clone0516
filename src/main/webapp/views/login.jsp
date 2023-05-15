
<script>

    let login_form = {
        init:function (){
            $('#login_btn').click(function (){
                login_form.send();
            });
        },
        send:function (){
            $('#login_form').attr({
                'action':'/loginimpl', //form의 정보를 server의 application에 전달하세요
                'method':'get'
            });
            $('#login_form').submit();
        }
    };

    $(function (){
        login_form.init(); // form정보를 서버에 전송
    });

</script>

<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Log In</h4>
                        <div class="breadcrumb__links">
                            <a href="/">Home</a>
                            <span>Log In</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-10">
                            <h6 class="coupon__code"><span class="icon_tag_alt"></span> Have no ID? <a href="#">Click
                            here</a> to join us</h6>
                            <h6 class="checkout__title">LOGIN FORM</h6>
                            <form id="login_form" name="register_form" >
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="checkout__input" >
                                        <p>Email<span>*</span></p>
                                        <input type="text" id="email" name="email">
                                    </div>
                                    <div class="checkout__input" >
                                        <p>Account Password<span>*</span></p>
                                        <input type="password" id="password" name="password">
                                    </div>
                                </div>
                            </div>
                                <div class="checkout__input__checkbox">
                                    <button type="button" class="btn btn-primary" id="login_btn">Log In</button>
                                </div>
                            </form>


                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->