<%@ page import="org.apache.sling.api.resource.Resource" %>
<%@ page import="org.apache.sling.jcr.jackrabbit.accessmanager.PrivilegesInfo" %>
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
    <!-- test -->
</div>
<div class="clearfix">

</div>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <sling:include path="main"/>
        </div>
    </div>

    <span  id="edit" class="btn btn-small">Edit</span>
    <script>
        $('#edit').on('click', function (e) {
            window.location.href = "<%=resource.getPath()%>.edit.html";
        })
    </script>
</div>
</body>
</html>
  	