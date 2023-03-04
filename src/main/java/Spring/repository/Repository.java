package Spring.repository;

import Spring.configuration.Myconfic;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class Repository extends AbstractAnnotationConfigDispatcherServletInitializer {
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{Myconfic.class};
    }

    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}
