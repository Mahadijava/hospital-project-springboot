package com.example.hospitalproject.repository;

import com.example.hospitalproject.entity.Cabin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CabinRepository extends JpaRepository<Cabin,Long > {
    @Query(value = "SELECT distinct (cabin_type) from hospitaldb.cabin ", nativeQuery = true)
    List<Object> listOfCabin();

//    @Query(value = "SELECT room_number FROM hospitaldb.cabin", nativeQuery = true)
//    List<Cabin> listOfRoom();

    @Query(value = "SELECT distinct(price) FROM hospitaldb.cabin", nativeQuery = true)
    List<Object> priceList();
}
