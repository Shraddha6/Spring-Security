package com.dicetek.usermanagement;

import net.bytebuddy.implementation.bind.annotation.IgnoreForBinding;
import org.junit.jupiter.api.Test;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.test.context.web.WebAppConfiguration;


@SpringBootTest
@EnableAutoConfiguration
@WebAppConfiguration // for MVC configuration
@EnableJpaRepositories //JPA repositories
@EntityScan  //JPA entities
@ComponentScan
class UserManagementApplicationTests {

	//@Test
	void contextLoads() {
	}

}
