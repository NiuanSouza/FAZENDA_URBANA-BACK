package com.citygreen.api.modules.production.repository;

import com.citygreen.api.modules.production.model.Production;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductionRepository extends JpaRepository<Production, String> {
}
