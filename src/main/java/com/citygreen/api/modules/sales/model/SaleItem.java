package com.citygreen.api.modules.sales.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.inventory.model.Batch;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
class SaleItemId implements Serializable {
    private Integer sale;
    private Integer batch;
}

@Entity
@Table(name = "sales_items")
@IdClass(SaleItemId.class)
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class SaleItem extends BaseEntity {

    @Id
    @ManyToOne
    @JoinColumn(name = "id_sale")
    private Sale sale;

    @Id
    @ManyToOne
    @JoinColumn(name = "id_batch")
    private Batch batch;

    private Integer quantity;

    @Column(name = "total_value")
    private BigDecimal totalValue;
}