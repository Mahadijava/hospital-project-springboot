package com.example.hospitalproject.repository;

import com.example.hospitalproject.entity.PatientAdmission;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientAdmissionRepository extends JpaRepository<PatientAdmission, Long > {
}
