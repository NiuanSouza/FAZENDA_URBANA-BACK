package com.citygreen.api.modules.production.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.inventory.model.Input;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
class InputProductionId implements Serializable {
    private Integer input;
    private Integer production;
}

@Entity
@Table(name = "input_production")
@IdClass(InputProductionId.class)
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class InputProduction extends BaseEntity {

    @Id
    @ManyToOne
    @JoinColumn(name = "id_input")
    private Input input;

    @Id
    @ManyToOne
    @JoinColumn(name = "id_production")
    private Production production;

    private Integer quantity;
}