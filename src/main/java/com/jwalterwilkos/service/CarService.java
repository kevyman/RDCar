package com.jwalterwilkos.service;

import com.jwalterwilkos.model.Car;

import org.springframework.data.domain.Page;

import java.util.List;

public interface CarService {
    List<Car> getAllCars();
    void saveCar(Car car);
    Car getCarById(int id);
    void deleteCarById(int id);
    Page<Car> findPaginated2(int pageNo, int pageSize, String sortField, String sortDirection);
}
