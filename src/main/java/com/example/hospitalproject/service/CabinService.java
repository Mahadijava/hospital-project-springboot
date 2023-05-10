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


    public List<Object>listOfCabin(){

        List<Object> objects = cabinRepository.listOfCabin();
        List<Cabin> cabinList = new ArrayList<>();

        objects.forEach(o -> {
            Cabin cabin = new Cabin();
            cabin.setCabinType(o.toString());
            cabinList.add(cabin);
        });
//        return cabinList;
        return objects;
    }

    public List<Cabin>listOfRoom(){
        return cabinRepository.findAll();
    }

    public List<Object>priceList(){
        return cabinRepository.priceList();
    }

}
