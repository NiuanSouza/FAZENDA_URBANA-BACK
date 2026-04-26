package com.citygreen.api.modules.user.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "functionality")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Functionality {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_functionality")
    private Integer id;

    private String name;
}
