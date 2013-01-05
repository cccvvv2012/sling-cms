<%@ page import="javax.jcr.Node" %>
<%@ page import="javax.jcr.NodeIterator" %>
<%@ include file="/apps/slingcms/global.jsp" %>

<!-- this component displays all its child nodes -->


<%
    NodeIterator iterator = currentNode.getNodes();
    while(iterator.hasNext()){
        Node node = iterator.nextNode();
    %>
<div class='row-fluid'>
    <sling:include path="<%=node.getPath()%>"/>
</div>
<%}%>
