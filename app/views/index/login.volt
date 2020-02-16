
<div class="start-discussion">

    <h1>Start a Discussion</h1>

    <div class="row">
        <div class="col-md-11">

            <div class="row">

                <div class="col-md-9">

                    <form method="post" autocomplete="off" role="form">

                        <div class="form-group">
                            <label>Title</label>
                            {{ text_field("title", "placeholder": "Title", "class": "form-control", "required": "required") }}
                        </div>

                        <div class="form-group">
                            <label>Category</label>

                        </div>

                        <div class="form-group">

                            <ul class="nav nav-tabs preview-nav">
                                <li class="active"><a href="#" onclick="return false">Write</a></li>
                                <li><a href="#" onclick="return false">Preview</a></li>
                                <li class="pull-right">{{ link_to('help/markdown', 'Help', 'target': '_blank') }}</li>
                            </ul>

                            <div id="comment-box" class="wmd-container">
                                <div id="wmd-button-bar"></div>
                                {{- text_area("wmd-input", "rows": 5, "class": "form-control input-sm", "name": "content") -}}
                                <div id="wmd-preview"></div>
                            </div>
                        </div>

                        <div class="editor-statusbar">
                            {#Here will be added lines and words counter and cursor position pointer#}
                        </div>

                        <div class="pull-right">
                            <button type="submit" class="btn btn-sm btn-success">Submit Discussion</button>
                        </div>

                    </form>

                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js"></script>
