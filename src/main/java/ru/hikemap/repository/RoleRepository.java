package ru.hikemap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.hikemap.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
  Role findByName(String name);
}
