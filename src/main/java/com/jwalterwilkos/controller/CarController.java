package com.jwalterwilkos.controller;

import com.jwalterwilkos.model.Car;
import com.jwalterwilkos.model.Employee;
import com.jwalterwilkos.service.CarService;
import com.jwalterwilkos.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CarController {

    @Autowired
    private CarService carService;

    @Autowired
    private EmployeeService employeeService;


    // display list of employees
    @GetMapping("/manageCars")
    public String viewCars(Model model) {
        return findPaginated2(1, "id", "asc", model);
    }

    @GetMapping("/showNewCarForm")
    public String showNewCarForm(Model model) {
        // create model attribute to bind form data
        Car car = new Car();
        model.addAttribute("car", car);
        return "newCar";
    }

    @PostMapping("/saveCar")
    public String saveCar(@ModelAttribute("car") Car car) {
        // save employee to database
        carService.saveCar(car);
        return "redirect:/manageCars";
    }

    @GetMapping("/showFormForCarUpdate/{id}")
    public String showFormForCarUpdate(@PathVariable( value = "id") int id, Model model) {

        // get car from the service
        Car car = carService.getCarById(id);

        List<Employee> listEmployees = employeeService.getAllEmployees();

        // set car as a model attribute to pre-populate the form
        model.addAttribute("car", car);
        model.addAttribute("listEmployees", listEmployees);
        return "updateCar";
    }

    @GetMapping("/deleteCar/{id}")
    public String deleteCar(@PathVariable (value = "id") int id) {

        // call delete employee method
        this.carService.deleteCarById(id);
        return "redirect:/manageCars";
    }


    @GetMapping("/pages/{pageNo}")
    public String findPaginated2(@PathVariable (value = "pageNo") int pageNo,
                                @RequestParam("sortField") String sortField,
                                @RequestParam("sortDir") String sortDir,
                                Model model) {
        int pageSize = 20;

        Page<Car> pages = carService.findPaginated2(pageNo, pageSize, sortField, sortDir);
        List<Car> listCars = pages.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", pages.getTotalPages());
        model.addAttribute("totalItems", pages.getTotalElements());

        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDir);
        model.addAttribute("reverseSortDir", sortDir.equals("asc") ? "desc" : "asc");

        model.addAttribute("listCars", listCars);
        return "manageCars";
    }

}
