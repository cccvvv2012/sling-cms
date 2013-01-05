package org.apache.sling.singcms;

import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ResourceUtil;
import org.apache.sling.scripting.api.BindingsValuesProvider;

import javax.script.Bindings;
/**
 * BindingsValuesProvider for slingcms objects.
 *
 * These include
 *
 * currentPage: currentPage in hierarchy with sling:resourceType starts with "slingcms/pages"
 *
 * @scr.component immediate="true" metatype="no"
 * @scr.service
 *
 * @scr.property name="service.description" value="SlingCms BindingsValuesProvider"
 * @scr.property name="service.vendor" value="The Apache Software Foundation"
 *
 * @scr.property name="javax.script.name" value="any"
 */
public class SlingCmsBindingVariables implements BindingsValuesProvider {

    @Override
    public void addBindings(Bindings bindings) {
        Resource resource = (Resource) bindings.get("resource");

        Resource pageResource = findPageResource(resource);
        if(pageResource!=null) bindings.put("currentPage", pageResource);
    }

    private Resource findPageResource(Resource resource) {
        if(resource==null) return null;
        if(resource.getResourceType() != null
                && resource.getResourceType().startsWith("slingcms/pages")) return resource;
       else return findPageResource(ResourceUtil.getParent(resource));
    }
}
