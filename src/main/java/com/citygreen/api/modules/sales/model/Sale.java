package com.citygreen.api.modules.sales.model;
import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.sales.model.enums.SaleStatus;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "sales")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class Sale extends BaseEntity {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_sale")
    private Integer id;

    private String number;

    @Column(name = "additional_info")
    private String additionalInfo;

    @ManyToOne
    @JoinColumn(name = "id_customer")
    private Customer customer;

    @Enumerated(EnumType.STRING)
    private SaleStatus status;
}


