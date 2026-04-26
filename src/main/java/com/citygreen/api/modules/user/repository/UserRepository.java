package com.citygreen.api.modules.user.repository;

import com.citygreen.api.modules.enums.StatusType;
import com.citygreen.api.modules.user.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    Optional<User> findByIdUser(String idUser);

    Optional<User> findByEmail(String email);

    boolean existsByIdUser(String idUser);

    boolean existsByEmail(String email);

    List<User> findByStatus(StatusType status);

    List<User> findByNameContainingIgnoreCase(String name);
}