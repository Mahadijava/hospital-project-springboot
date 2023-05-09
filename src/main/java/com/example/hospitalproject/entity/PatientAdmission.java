package com.example.hospitalproject.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

import javax.persistence.Entity;

@Entity
@Data
@ToString
@RequiredArgsConstructor
public class PatientAdmission extends BaseEntity{
    private String patientName,
            patientPhone, patientAddress,
            gender, age,
            doctorName, department,
            appointmentDate, status,
            bedType, description,
            admissionDate, releaseDate;
    Integer bedCharge, totalBedBill;
}
