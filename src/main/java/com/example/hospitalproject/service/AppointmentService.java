package com.example.hospitalproject.service;

import com.example.hospitalproject.entity.Appointment;
import com.example.hospitalproject.exception.UserNotFoundException;
import com.example.hospitalproject.repository.AppoinmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.util.List;

@Service
public class AppointmentService {
    @Autowired
    private AppoinmentRepository appoinmentRepository;

    public List<Appointment>appointmentList(){
        return appoinmentRepository.findAll();
    }

    public void save(Appointment appointment){
        appoinmentRepository.save(appointment);
    }

    public void  update(Long id, Appointment appointment){
        appoinmentRepository.findById(id).map(
                old -> {
                    old.setPatientName(appointment.getPatientName());
                    old.setPatientPhone(appointment.getPatientPhone());
                    old.setPatientAddress(appointment.getPatientAddress());
                    old.setGender(appointment.getGender());
                    old.setAge(appointment.getAge());
                    old.setDoctorName(appointment.getDoctorName());
                    old.setDepartment(appointment.getDepartment());
                    old.setAppointmentDate(appointment.getAppointmentDate());
                    old.setRecommendation(appointment.getRecommendation());
                    old.setStatus(appointment .getStatus());
                    return appoinmentRepository.save(old);
                })
                .orElseGet(()-> {
                    return appoinmentRepository.save(appointment);
                });

    }

    public Appointment findAppointmentById(Long id){
        return appoinmentRepository.findById(id).
                orElseThrow(() -> new UserNotFoundException("user was not found by this id")); // orElse must as it returns optional
    }

    public void delete(Long id){
        appoinmentRepository.deleteById(id);
    }
}
