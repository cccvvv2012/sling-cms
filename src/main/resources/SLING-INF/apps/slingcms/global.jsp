<%@ page import="org.apache.sling.api.resource.ValueMap" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0" %>
<sling:defineObjects/>
<%ValueMap properties = resource.adaptTo(ValueMap.class);%>