package com.citygreen.api.modules.sales.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.enums.StatusType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "customer")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Customer extends BaseEntity {
    @Id
    @Column(name = "id_customer")
    private Integer id;

    private String name;
    private String phone1;
    private String phone2;
    private String cnpj;
    private String ie;
    private String email;

    @Column(name = "address_number")
    private Integer addressNumber;

    @Column(name = "address_name")
    private String addressName;

    private String neighborhood;
    private String city;
    private String state;

    @Column(name = "zip_code")
    private String zipCode;

    private String type;

    @Enumerated(EnumType.STRING)
    private StatusType status;
}