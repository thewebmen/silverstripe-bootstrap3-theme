<!DOCTYPE html>
<html lang="$ContentLocale">
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        $MetaTags(false)
        <link rel="shortcut icon" href="$ThemeDir/img/favicon.ico" />
    </head>
    <body class="$ClassName">
        <div class="container" id="main">
            <% include Header %>
            <% include Navigation %>
            <% include BreadCrumbs %>
            <div role="main">
                $Layout
            </div>
        </div>
        <% include Footer %>
    </body>
</html>