package com.citygreen.api.modules.sales.repository;

import com.citygreen.api.modules.sales.model.Sale;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SaleRepository extends JpaRepository<Sale, String> {
}
