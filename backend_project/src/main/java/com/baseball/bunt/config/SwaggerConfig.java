package com.baseball.bunt.config;

import org.springdoc.core.models.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;

@Configuration
public class SwaggerConfig implements WebMvcConfigurer {

	@Bean
	public OpenAPI customOpenAPI() {
		return new OpenAPI()
			.info(new Info()
				.title("BUNT")
				.version("1.0")
				.description("번트의 RESTful API test"));
	}

	@Bean
	public GroupedOpenApi publicApi() {
		return GroupedOpenApi.builder()
			.group("public")
			.pathsToMatch("/**")
			.build();
	}
}
