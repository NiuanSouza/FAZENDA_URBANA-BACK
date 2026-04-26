package com.citygreen.api.modules.production.model;
import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.production.model.enums.ProductionStatus;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "production")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class Production extends BaseEntity {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_production")
    private Integer id;

    @Column(name = "start_date")
    private LocalDate startDate;

    @Column(name = "end_date")
    private LocalDate endDate;

    private String product;

    @Enumerated(EnumType.STRING)
    private ProductionStatus status;
}
