package com.citygreen.api.modules.inventory.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "product")
@Getter @Setter @NoArgsConstructor
@AllArgsConstructor
public class Product extends BaseEntity {
    @Id
    @Column(name = "id_product")
    private Integer id;

    private String name;
    private String category;
}

