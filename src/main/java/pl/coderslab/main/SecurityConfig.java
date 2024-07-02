package pl.coderslab.main;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig {

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    protected SecurityFilterChain configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/resources/**", "/css/**", "/js/**", "/images/**", "/login").permitAll()
                .antMatchers("/dashboard").authenticated()
                .antMatchers("/place/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/trainingSession/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/player/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/exercise/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/playerExercise/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/trainingInformation/**").hasAnyRole("USER", "ADMIN")
                .anyRequest().authenticated()
                .and().formLogin().loginPage("/login").permitAll()
                .defaultSuccessUrl("/dashboard", true)
                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/login").permitAll()
                .and().exceptionHandling().accessDeniedPage("/403");


        return http.build();
    }
}
