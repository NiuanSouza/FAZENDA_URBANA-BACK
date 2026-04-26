package com.citygreen.api.modules.inventory.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import com.citygreen.api.modules.enums.StatusType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "suppliers")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Supplier extends BaseEntity {
    @Id
    private String cnpj;

    private String name;

    @Column(name = "legal_name")
    private String legalName;

    private String phone1;
    private String phone2;
    private String email;

    @Enumerated(EnumType.STRING)
    private StatusType status;

    private String type;

    @Column(name = "additional_info")
    private String additionalInfo;

    private String address;

    @Column(name = "address_number")
    private Integer addressNumber;

    private String neighborhood;
    private String city;
    private String state;
    private String country;

    @Column(name = "zip_code")
    private String zipCode;
}