package com.tracker.app.init;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import com.tracker.app.controllers.HomeController;
import com.tracker.app.controllers.UserController;
import com.tracker.app.dao.UserRepository;
import com.tracker.app.security.SecurityUserDetailsService;
import com.tracker.app.services.UserService;
import com.tracker.config.root.DevelopmentConfiguration;

import com.tracker.config.servlet.ServletContextConfig;


/*import com.development.backend.ng.springmvc.api.post.CommentController;
import com.development.backend.ng.springmvc.api.post.PostController;
import com.development.backend.ng.springmvc.api.user.CurrentUserController;
import com.development.backend.ng.springmvc.api.user.SignupController;
import com.development.backend.ng.springmvc.security.SimpleUserDetailsServiceImpl;
import com.development.backend.ng.springmvc.service.BlogService;*/



@SpringBootApplication
@Configuration
@ComponentScan(basePackages = { "com.tracker.app.*"} )
@Component
public class WebAppInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		WebApplicationContext context = getContext();
		servletContext.addListener(new ContextLoaderListener(context));
		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("DispatcherServlet",
				new DispatcherServlet(context));
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/api/");
		
		FilterRegistration.Dynamic fr = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
		 
        fr.setInitParameter("encoding", "UTF-8");
        fr.setInitParameter("forceEncoding", "true");
        fr.addMappingForUrlPatterns(null, true, "/*");
	}

	private AnnotationConfigWebApplicationContext getContext() {
		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();

		context.register(UserService.class);
		context.register(UserRepository.class);
		context.register(SecurityUserDetailsService.class);
		context.register(DevelopmentConfiguration.class);
	    context.register(HomeController.class);
		context.register(UserController.class);
		context.register(WebMvcConfig.class);
		context.register(ServletContextConfig.class);
		
       /* context.register(BlogService.class);
        
        context.register(com.development.backend.ng.springmvc.service.UserService.class);
        context.register(SimpleUserDetailsServiceImpl.class);
        context.register(CurrentUserController.class);
        context.register(SignupController.class);
        context.register(com.development.backend.ng.springmvc.api.user.UserController.class);
        context.register(CommentController.class);
        context.register(PostController.class);
        context.register(WebMvcConfig.class);
        context.register(SwaggerConfig.class);
       
        context.register(RootConfig.class);
		context.register(JpaConfig.class);*/
		
		return context;
	}
	
	  

}
