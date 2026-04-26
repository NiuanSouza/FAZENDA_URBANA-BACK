package com.citygreen.api.modules.inventory.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.inventory.model.enums.InputValidity;
import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;



@Entity
@Table(name = "input")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class Input extends BaseEntity {
    @Id
    @Column(name = "id_input")
    private Integer id;

    private String name;
    private Integer quantity;

    @Enumerated(EnumType.STRING)
    private InputValidity validity;

    @Column(name = "expiration_date")
    private LocalDate expirationDate;

    @ManyToOne
    @JoinColumn(name = "cnpj_supplier")
    private Supplier supplier;
}

