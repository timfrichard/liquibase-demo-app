/**
 * Property of Gifted Concepts LLC.
 */
package com.sparkys.app.liquibase.core.repository;

import com.sparkys.app.liquibase.core.entities.Employee;

import org.springframework.data.repository.CrudRepository;

/**
 * @author Tim Richard
 *
 */
public interface EmployeeRepository extends CrudRepository<Employee, Long> {

    /**
     * This method should find an employee by their first name.
     *
     * @param firstname
     * @return Employee
     */
    Employee findByBusInfoFirstName(String firstname);

    /**
     * This method should find an employee by their logonId.
     *
     * @param logonId
     * @return Employee
     */
    Employee findByLogonid(String logonId);
}
