package com.citygreen.api.modules.inventory.repository;

import com.citygreen.api.modules.inventory.model.Input;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InputRepository extends JpaRepository<Input, String> {
}
