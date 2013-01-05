<%@ page import="org.apache.sling.api.resource.Resource" %>
<%@ include file="/apps/slingcms/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title><%= properties.get("title", "Title") %>
    </title>
    <sling:include path="head"/>
</head>
<body>
<div class="navigation">
    <sling:include path="menu"/>
</div>
<div class="clearfix">

</div>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <sling:include path="main"/>
        </div>
    </div>
    <span  id="view" class="btn btn-small">View</span>
    <script>
        $('#view').on('click', function (e) {
            window.location.href = "<%=resource.getPath()%>.html";
        })
    </script>
</div>
</body>
</html>
  	