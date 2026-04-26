package com.citygreen.api.modules.user.model;

import com.citygreen.api.infrastructure.models.BaseEntity;
import jakarta.persistence.*;
import lombok.*;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
class UserPermissionId implements Serializable {
    private String user;
    private Integer functionality;
}

@Entity
@Table(name = "user_permission")
@IdClass(UserPermissionId.class)
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class UserPermission extends BaseEntity {

    @Id
    @ManyToOne
    @JoinColumn(name = "id_user")
    private User user;

    @Id
    @ManyToOne
    @JoinColumn(name = "id_functionality")
    private Functionality functionality;
}