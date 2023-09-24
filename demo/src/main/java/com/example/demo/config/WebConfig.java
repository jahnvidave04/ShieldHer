package com.example.demo.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:49135","http://localhost:51178","http://localhost:52090","http://localhost:53794","http://localhost:56612","http://localhost:57171","http://localhost:58032","http://localhost:58769","http://localhost:59300","http://localhost:59632","http://localhost:60753","http://localhost:62216" ) // Add the origin of your Flutter app
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS");
    }
}
