package com.example.hospitalproject.service;

import com.example.hospitalproject.entity.Cabin;
import com.example.hospitalproject.repository.CabinRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CabinService {
    @Autowired
    CabinRepository cabinRepository;


    public List<Cabin>listOfCabin(){

        List<Object> objects = cabinRepository.listOfCabin();
        List<Cabin> cabinList = new ArrayList<>();

        objects.forEach(o -> {
            Cabin cabin = new Cabin();
            cabin.setCabinType(o.toString());
            cabinList.add(cabin);
        });
//        return cabinList;
        return cabinList;
    }

    public List<Cabin>listOfRoom( String cabintype){
        if (cabintype==null){
            return cabinRepository.findAll();
        }else {
            return cabinRepository.findAllByCabinType(cabintype);
        }
    }

    public List<Object>priceList(){
        return cabinRepository.priceList();
    }

}
