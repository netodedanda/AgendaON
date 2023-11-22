package br.com.agendarapida.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("br.com.agendarapida")
@EnableWebMvc
public class RootConfig {

}
