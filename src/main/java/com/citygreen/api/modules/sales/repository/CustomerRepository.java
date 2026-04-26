package com.citygreen.api.modules.sales.repository;

import com.citygreen.api.modules.sales.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, String> {
}
