package com.example.hospitalproject.repository;

import com.example.hospitalproject.entity.Specialization;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpecializationRepository extends JpaRepository<Specialization, Integer> {
}
