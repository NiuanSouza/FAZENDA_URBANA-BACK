package com.citygreen.api.modules.inventory.repository;

import com.citygreen.api.modules.inventory.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, String> {
}
