package Spring.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("Spring")
@EnableWebMvc
public class Myconfic implements WebMvcConfigurer {
    @Bean
    public ViewResolver get() {
        return new InternalResourceViewResolver("/WEB-INF/view/", ".jsp");
    }
}
