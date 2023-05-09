package com.example.hospitalproject.service;

import com.example.hospitalproject.entity.DoctorSignup;
import com.example.hospitalproject.exception.UserNotFoundException;
import com.example.hospitalproject.repository.DoctorSignupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorSignupService {
    @Autowired
    DoctorSignupRepository doctorSignupRepository;
    public List<DoctorSignup>doctorSignupList(){
        return doctorSignupRepository.findAll();
    }

    public List<DoctorSignup>doctorsListByDep(String dep){
        return doctorSignupRepository.getDoctorsByDepartment(dep);
    }
    public void saveDoctorInfo(DoctorSignup doctorSignup){
        doctorSignupRepository.save(doctorSignup);
    }

    public void update(Long id, DoctorSignup doctorSignup){
        doctorSignupRepository.findById(id).map(
                        old -> {
                            old.setDoctorName(doctorSignup.getDoctorName());
                            old.setEmail(doctorSignup.getEmail());
                            old.setPhone(doctorSignup.getPhone());
                            old.setDepartment(doctorSignup.getDepartment());
                            old.setUserName(doctorSignup.getUserName());
                            old.setPassword(doctorSignup.getPassword());

                            return doctorSignupRepository.save(old);
                        })
                .orElseGet(()-> {
                    return doctorSignupRepository.save(doctorSignup);
                });
    }

    public DoctorSignup findDoctorById(Long id){
        return doctorSignupRepository.findById(id).orElseThrow(() -> new UserNotFoundException("user was not found by this id")); // orElse must as it returns optional
    }

    public void delete(Long id){
        doctorSignupRepository.deleteById(id);
    }
}


