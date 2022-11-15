package com.smartpour.backend.repository;

import com.smartpour.backend.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {
    User findByUsername(String username);
    public boolean existsByUsername(String username);
}
