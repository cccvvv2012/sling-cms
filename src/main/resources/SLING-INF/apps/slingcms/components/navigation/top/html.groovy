import groovy.xml.MarkupBuilder


StringWriter w = new StringWriter()
def builder = new MarkupBuilder(w)

def resourceResolver = request.resourceResolver
def rootContent = resourceResolver.getResource("/content/slingcms/home")

builder.div(class:'navbar') {
    div(class:'navbar-inner') {
        div(class:'container') {
            div(class:'nav-collapse') {
                ul(class:'nav') {
                    li { a('Home',href:'/content/slingcms/home.html') }
                    rootContent.listChildren().each   { curRes ->
                        if(curRes.isResourceType("slingcms:base")) {
                            def curPageNode = curRes.adaptTo(javax.jcr.Node)
                            li { a(curRes.path + '.html', href:curPageNode.getProperty('title').string)}
                        }
                    }
                }
            }
        }
    }
}


out<<w

