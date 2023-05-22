package com.example.hospitalproject.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity
@Data
@ToString
@RequiredArgsConstructor
public class PatientAdmission extends BaseEntity{
    private String patientName,
            patientPhone, patientAddress,
            gender, age,
            doctorName, department, status,
             cabinType, roomNumber, description,
            admissionDate, releaseDate;
    Integer price, totalBedBill;

    @Enumerated(EnumType.STRING)
    private AdmissionStatus admissionStatus;
}
