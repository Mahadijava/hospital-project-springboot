package com.example.hospitalproject.service;

import com.example.hospitalproject.entity.BillingPatient;
import com.example.hospitalproject.entity.PatientAdmission;
import com.example.hospitalproject.repository.BillingPatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BillingPatientService {

    @Autowired
    private BillingPatientRepository billingPatientRepository;

    public void save(BillingPatient billingPatient){
        billingPatientRepository.save(billingPatient);
    }

    public void update(long id, BillingPatient billingPatient){
        billingPatientRepository.findById(id).map(
                old -> {
                    old.setPatientName(billingPatient.getPatientName());
                    old.setPatientPhone(billingPatient.getPatientPhone());
                    old.setPatientAddress(billingPatient.getPatientAddress());
                    old.setGender(billingPatient.getGender());
                    old.setAge(billingPatient.getAge());
                    old.setDoctorName(billingPatient.getDoctorName());
                    old.setDepartment(billingPatient.getDepartment());
                    old.setAdmissionDate(billingPatient.getAdmissionDate());
                    old.setReleaseDate(billingPatient.getReleaseDate());
                    old.setStatus(billingPatient.getStatus());
                    old.setAdmissionStatus(billingPatient.getAdmissionStatus());
                    old.setCabinType(billingPatient.getCabinType());
                    old.setRoomNumber(billingPatient.getRoomNumber());
                    old.setPrice(billingPatient.getPrice());
                    old.setTotalBedBill(billingPatient.getTotalBedBill());
                    return admissionRepository.save(old);
                }
        )
    }
}
