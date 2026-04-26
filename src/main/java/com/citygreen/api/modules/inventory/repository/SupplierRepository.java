package com.citygreen.api.modules.inventory.repository;

import com.citygreen.api.modules.inventory.model.Supplier;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SupplierRepository extends JpaRepository<Supplier, String> {
}
