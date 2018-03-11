package com.luv2code.springsecurity.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig
        extends WebSecurityConfigurerAdapter{
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //ad our users for in memory authentication
        User.UserBuilder userBuilder = User.withDefaultPasswordEncoder();
        auth.inMemoryAuthentication()
                .withUser(userBuilder.username("Bhavya").password("Arora").roles("EMPLOYEE"))
                .withUser(userBuilder.username("Rishab").password("Jolly").roles("EMPLOYEE"))
                .withUser(userBuilder.username("Bhavishya").password("Mittal").roles("EMPLOYEE"));

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .anyRequest().authenticated()
        .and()
            .formLogin()
            .loginPage("/loginPage")
            .loginProcessingUrl("/authenticateUser")
            .permitAll()
        .and()
            .logout().permitAll();

    }
}
