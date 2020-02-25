/**
 *
 */
package com.sparkys.app.liquibase.config;

import com.sparkys.app.liquibase.core.entities.Employee;
import com.sparkys.app.liquibase.core.repository.EmployeeRepository;
import com.sparkys.app.liquibase.core.utils.EmployeeUtils;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author Tim Richard
 *
 */
@Configuration
public class RunnerConfig {

    @Bean
    public CommandLineRunner runner(final EmployeeRepository repository) {

	// creating an employee
	final Employee employee = repository.findByLogonid("mylogonid");
	if (employee == null) {
	    repository.save(EmployeeUtils.createEmployee());
	}

	return args -> System.out.println(repository.findAll());
    }
}
