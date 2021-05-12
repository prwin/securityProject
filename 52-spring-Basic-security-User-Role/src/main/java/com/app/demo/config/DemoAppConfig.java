package com.app.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.app.demo")
public class DemoAppConfig {
//def bean for view resolver
	@Bean
	public ViewResolver ViewResolver() {
		
		InternalResourceViewResolver VR=new InternalResourceViewResolver();
		
		VR.setPrefix("/WEB-INF/view/");
		
		VR.setSuffix(".jsp");
		
		
		return VR;
		
	}
	
	
	
	
}
