package com.citygreen.api.modules.inventory.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.inventory.model.enums.BatchStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Table(name = "batch")
@Getter @Setter @NoArgsConstructor
@AllArgsConstructor
public class Batch extends BaseEntity {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_batch")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "id_product")
    private Product product;

    private Integer quantity;

    @Column(name = "id_production")
    private Integer idProduction;

    @Enumerated(EnumType.STRING)
    private BatchStatus status;

    @Column(name = "expiration_date")
    private LocalDate expirationDate;
}