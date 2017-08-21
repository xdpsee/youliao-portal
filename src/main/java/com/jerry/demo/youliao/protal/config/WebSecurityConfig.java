package com.jerry.demo.youliao.protal.config;

import com.jerry.demo.usercenter.api.services.UserAuthInfoService;
import com.jerry.demo.usercenter.security.jwt.UserAuthenticationFilter;
import com.jerry.demo.youliao.protal.utils.UserAuthenticationEntryPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserAuthenticationEntryPoint unauthorizedHandler;

    @Autowired
    private UserAuthInfoService userAuthInfoService;

    @Override
    protected void configure(AuthenticationManagerBuilder builder) throws Exception {
    }


    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserAuthenticationFilter authenticationTokenFilter() throws Exception {
        UserAuthenticationFilter filter = new UserAuthenticationFilter();
        filter.setUserAuthInfoService(userAuthInfoService);
        return filter;
    }

    @Override
    protected void configure(HttpSecurity security) throws Exception {
        security
                .csrf().disable()
                .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        security.authorizeRequests()
                .antMatchers(HttpMethod.GET, "/").permitAll()
                .antMatchers("/resources/**").permitAll()
                .anyRequest().authenticated();

        // 添加JWT filter
        security.addFilterBefore(authenticationTokenFilter(), UsernamePasswordAuthenticationFilter.class);

        // 禁用缓存
        security.headers().cacheControl();
    }
}



