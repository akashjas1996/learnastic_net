<!DOCTYPE html>
<!--[if lt IE 7]> <html lang="{{ document_language }}" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html lang="{{ document_language }}" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html lang="{{ document_language }}" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="{{ document_language }}" class="no-js"> <!--<![endif]-->
<head>
{% block head %}
    {% include 'layout/head.tpl'|get_template %}
{% endblock %}
</head>
<body>
    <!-- START MAIN -->
    <main id="main" dir="{{ text_direction }}" class="{{ section_name }} {{ login_class }}">
    <noscript>{{ "NoJavascript"|get_lang }}</noscript>
            {% if show_course_shortcut is not null %}
            <!-- TOOLS SHOW COURSE -->
            <div id="cm-tools" class="nav-tools">
                {{ show_course_shortcut }}
            </div>
            <!-- END TOOLS SHOW COURSE -->
            {% endif %}
            {% if displayCookieUsageWarning == true %}
                <!-- START DISPLAY COOKIES VALIDATION -->
                <div class="toolbar-cookie alert-warning">
                    <form onSubmit="$(this).toggle('slow')" action="" method="post">
                        <input value=1 type="hidden" name="acceptCookies"/>
                        <div class="cookieUsageValidation">
                            {{ "YouAcceptCookies" | get_lang }}
                            <span style="margin-left:20px;" onclick="$(this).next().toggle('slow'); $(this).toggle('slow')">
                                ({{"More" | get_lang }})
                            </span>
                            <div style="display:none; margin:20px 0;">
                                {{ "HelpCookieUsageValidation" | get_lang}}
                            </div>
                            <span style="margin-left:20px;" onclick="$(this).parent().parent().submit()">
                                ({{"Accept" | get_lang }})
                            </span>
                        </div>
                    </form>
                </div>
                <!-- END DISPLAY COOKIES VALIDATION -->
            {% endif %}

            <!-- START HEADER -->
            <header id="cm-header">
                {% if show_header == true %}
                    {% include 'layout/page_header.tpl'|get_template %}
                {% endif %}
            </header>
            <!-- END HEADER -->

            <!-- START CONTENT -->
            <section id="cm-content">
                <div class="container">
                    {% block breadcrumb %}
                        {{ breadcrumb }}
                    {% endblock %}
                    {% block body %}
                        {{ content }}
                    {% endblock %}
                </div>
            </section>
            <!-- END CONTENT -->

            <!-- START FOOTER -->
            <footer class="footer">
                {% if show_footer == true %}
                    {% include 'layout/page_footer.tpl'|get_template %}
                {% endif %}
            </footer>
            <!-- END FOOTER -->

        </main>
    <!-- END MAIN -->
</body>
</html>