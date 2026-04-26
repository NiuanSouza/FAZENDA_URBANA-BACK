package com.citygreen.api.modules.inventory.repository;

import com.citygreen.api.modules.inventory.model.Batch;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BatchRepository extends JpaRepository<Batch, String> {
}
