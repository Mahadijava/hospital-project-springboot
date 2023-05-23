package com.example.hospitalproject.service;

import com.example.hospitalproject.entity.BillingPatient;
import com.example.hospitalproject.exception.UserNotFoundException;
import com.example.hospitalproject.repository.BillingPatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDateTime;

@Service
public class BillingPatientService {

    @Autowired
    private BillingPatientRepository billingPatientRepository;

//    public long calculateDurationInHours(LocalDateTime admissionDate, LocalDateTime releaseDate) {
//        Duration stayingDays = Duration.between(admissionDate, releaseDate);
//        return stayingDays.toHours();
//    }

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
                    old.setMedicinePrice(billingPatient.getMedicinePrice());
                   old.setDiscount(billingPatient.getDiscount());
                    old.setCabinType(billingPatient.getCabinType());
                    old.setRoomNumber(billingPatient.getRoomNumber());
                    old.setCabinPrice(billingPatient.getCabinPrice());
                    old.setBedBill(billingPatient.getBedBill());
                    old.setDoctorVisit(billingPatient.getDoctorVisit());
                    return billingPatientRepository.save(old);
                    // doctorVisit, visitDate,   patientCase, medicine, surgeryDetails;
                }).orElseGet(()-> {
                    return billingPatientRepository.save(billingPatient);
        });
    }

    public BillingPatient findPatientInfoById(Long id){
        return billingPatientRepository.findById(id).orElseThrow(() -> new UserNotFoundException("user not found"));
    }

    public void delete(Long id){
        billingPatientRepository.deleteById(id);
    }
}
