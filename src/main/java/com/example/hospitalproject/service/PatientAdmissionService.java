package com.example.hospitalproject.service;

import com.example.hospitalproject.entity.AdmissionStatus;
import com.example.hospitalproject.entity.Cabin;
import com.example.hospitalproject.entity.PatientAdmission;
import com.example.hospitalproject.exception.UserNotFoundException;
import com.example.hospitalproject.repository.CabinRepository;
import com.example.hospitalproject.repository.PatientAdmissionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.PublicKey;
import java.util.List;

@Service
public class PatientAdmissionService {
    @Autowired
    private PatientAdmissionRepository admissionRepository;
    @Autowired
    private CabinRepository cabinRepository;
    public List<PatientAdmission>patientAdmissionList(){return admissionRepository.findAll();}

    public void save(PatientAdmission patientAdmission){
        Cabin cabin = cabinRepository.findByRoomNumber(patientAdmission.getRoomNumber());

        if (cabin.equals(null)){ throw new RuntimeException("Room already booked!!");}
        cabin.setStatus(false);
        cabinRepository.save(cabin);
        patientAdmission.setAdmissionStatus(AdmissionStatus.Admitted);
        admissionRepository.save(patientAdmission);}

    public void update(long id, PatientAdmission patientAdmission){
        admissionRepository.findById(id).map(
                old -> {
                    old.setPatientName(patientAdmission.getPatientName());
                    old.setPatientPhone(patientAdmission.getPatientPhone());
                    old.setPatientAddress(patientAdmission.getPatientAddress());
                    old.setGender(patientAdmission.getGender());
                    old.setAge(patientAdmission.getAge());
                    old.setDoctorName(patientAdmission.getDoctorName());
                    old.setDepartment(patientAdmission.getDepartment());
//                    old.setAdmissionDate(patientAdmission.getAdmissionDate());
//                    old.setReleaseDate(patientAdmission.getReleaseDate());
                    old.setStatus(patientAdmission.getStatus());
                    old.setAdmissionStatus(patientAdmission.getAdmissionStatus());
                    old.setCabinType(patientAdmission.getCabinType());
                    old.setRoomNumber(patientAdmission.getRoomNumber());
                    old.setPrice(patientAdmission.getPrice());
                    old.setTotalBedBill(patientAdmission.getTotalBedBill());
                    return admissionRepository.save(old);
                })
                .orElseGet(()->{
                    return admissionRepository.save(patientAdmission);
                });
    }

    public PatientAdmission findadmissionInfoById(Long id){
        return admissionRepository.findById(id).
                orElseThrow(() -> new UserNotFoundException("user was not found by this id"));
    }

    public void delete(Long id){admissionRepository.deleteById(id);}
}
