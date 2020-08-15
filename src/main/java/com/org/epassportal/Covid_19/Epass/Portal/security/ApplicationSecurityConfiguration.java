package com.org.epassportal.Covid_19.Epass.Portal.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class ApplicationSecurityConfiguration extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
		.withUser("Hyderabad")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Adilabad")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Bhadradri Kothagudem")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Jagitial")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Jangaon")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Jayashankar Bhupalpally")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Jogulamba Gadwal")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Kamareddy")
		.password("12345678")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("Karimnagar")
		.password("12345678")
		.roles("USER");
		
	}
	
	@Bean
	public PasswordEncoder getPasswordEncounter()
	{
		return NoOpPasswordEncoder.getInstance();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		 
		http
		.csrf().disable()
		.authorizeRequests()
		.antMatchers("/home").hasRole("USER")
		.antMatchers("/","/domestic*","/emergency*","/online*","/employee*","/health*","/success*","/know*","/mobilenumbers/**","/otp*","/getDetails*","/remindme/**").permitAll()
//		.antMatchers("/*").permitAll()
		.antMatchers("/css/**", "/js/**", "/images/**").permitAll()
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/login").permitAll()
		.and()
		.logout()
//		invalidateHttpSession(true)
//		.clearAuthentication(true)
//		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutUrl("/logout").permitAll().deleteCookies("JSESSIONID");
//		.loginPage("/login").permitAll()
//		.and()
//		.logout()
//		.logoutUrl("/logout").permitAll().deleteCookies("JSESSIONID");
	}

}
