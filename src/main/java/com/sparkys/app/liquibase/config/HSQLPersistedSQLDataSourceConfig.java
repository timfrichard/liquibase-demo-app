/**
 * Property of Gifted Concepts LLC.
 */
package com.sparkys.app.liquibase.config;

import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.autoconfigure.liquibase.LiquibaseDataSource;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;

/**
 * @author Tim Richard
 *
 */
@Configuration
@Profile({ "hsql-persisted-profile" })
public class HSQLPersistedSQLDataSourceConfig {

    private static final String DB_USER_NAME_PROP = "com.sparkys.online.orders.employee.db.user.name";
    private static final String DB_USER_PASSWORD_PROP = "com.sparkys.online.orders.employee.db.user.password";

    @Autowired
    private DataSourceProperties dataSourceProperties;

    @Autowired
    private Environment env;

    @Primary
    @Bean
    public DataSource dataSource() {

	return DataSourceBuilder.create()
	        .username(dataSourceProperties.getUsername())
	        .password(dataSourceProperties.getPassword())
	        .url(dataSourceProperties.getUrl()).build();
    }

    @LiquibaseDataSource
    @Bean
    public DataSource liquibaseDataSource() {
	final DataSource ds = DataSourceBuilder.create()
	        .username(env.getProperty(DB_USER_NAME_PROP))
	        .password(env.getProperty(DB_USER_PASSWORD_PROP))
	        .url(dataSourceProperties.getUrl()).build();
	if (ds instanceof HikariDataSource) {
	    ((HikariDataSource) ds).setMaximumPoolSize(2);
	    ((HikariDataSource) ds).setPoolName("Liquibase Pool");
	}
	return ds;
    }
}
