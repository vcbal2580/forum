{{ content() }}


<div class="start-discussion">

    <h1>Start to Log in / Register</h1>

    <div class="row">
        <div class="col-md-11">

            <div class="row">

                <div class="col-md-9">

                    <form method="post" autocomplete="off" role="form">

                        <div class="form-group">
                            <label>username</label>
                            {{ text_field("username", "placeholder": "username", "class": "form-control", "required": "required") }}
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            {{ password_field("pwd", "placeholder": "password", "class": "form-control", "required": "required") }}
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            {{ password_field("pwd", "placeholder": "confirm the password", "class": "form-control", "required": "required") }}
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            {{ text_field("email", "placeholder": "email", "class": "form-control", "required": "required") }}
                        </div>
                            <div class="form-group">
                                <label for="timezone">Timezone</label>
                                {{ select_static('timezone', timezones, 'class': 'form-control') }}
                            </div>


                        <div class="editor-statusbar">
                            {#Here will be added lines and words counter and cursor position pointer#}
                        </div>

                        <div class="pull-right">
                            <button type="submit" class="btn btn-sm btn-success">Submit</button>
                        </div>

                    </form>

                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>
