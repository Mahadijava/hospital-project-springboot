package com.example.hospitalproject.repository;

import com.example.hospitalproject.entity.PathologyList;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PathologyListNameRepository extends JpaRepository<PathologyList, Integer> {
}
