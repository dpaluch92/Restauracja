package com.mycompany.projekt.configuration;

import com.mycompany.projekt.dao.user.UserDAO;
import com.mycompany.projekt.db.UserDb;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    List<UserDb> users;
    
    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        users = UserDAO.getAllUsers();
        
        for(UserDb u : users){
            if(u.getUserRole()==0){
                auth.inMemoryAuthentication().withUser(u.getUserLogin()).password(u.getUserPassword()).roles("ADMIN");
            } else if (u.getUserRole()==1){
                auth.inMemoryAuthentication().withUser(u.getUserLogin()).password(u.getUserPassword()).roles("DBA");
            } else if (u.getUserRole()==3){
                auth.inMemoryAuthentication().withUser(u.getUserLogin()).password(u.getUserPassword()).roles("USER");
            }
        }
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        
        http.authorizeRequests()
                .antMatchers("/", "/home").permitAll()
                .antMatchers("/user/**").access("hasRole('USER')")
                .antMatchers("/admin/**").access("hasRole('ADMIN')")
                .antMatchers("/dba/**").access("hasRole('DBA')")
                .and().formLogin().loginPage("/zaloguj").successHandler(new CustomSuccessHandler())
                .usernameParameter("username").passwordParameter("password")
                // przy tym sie wykurwia .successHandler(successHandler)
                .and().csrf()
                .and().exceptionHandling().accessDeniedPage("/Access_Denied");
    }
}
