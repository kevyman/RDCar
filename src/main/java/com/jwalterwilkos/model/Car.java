package com.jwalterwilkos.model;

import javax.persistence.*;

@Entity
@Table(name = "cars")
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="cat")
    private String cat;

    @Column(name="b_co2")
    private Integer bCo2;

    @Column(name="brand")
    private String brand;

    @Column(name="model")
    private String model;

    @Column(name="pack")
    private String pack;

    @Column(name="fuel")
    private String fuel;

    @Column(name="tank_size")
    private String tankSize;

    @Column(name="tow_bracket")
    private String towBracket;

    @Column(name="rim")
    private String rim;

    @Column(name="max_km_per_year")
    private Integer maxKmPerYear;

    @Column(name="ideal_km")
    private Integer idealKm;

    @Column(name="max_km")
    private Integer maxKm;

    @Column(name="list_price")
    private String listPrice;

    @Column(name="benefit_kind_month")
    private String benefitKindMonth;

    @Column(name="upgrade_cost")
    private String upgradeCost;

    @Column(name="downgrade_benefit")
    private String downgradeBenefit;

    @Column(name="available")
    private Boolean available;

    @OneToOne(mappedBy = "car")
    private Employee employee;


    public Integer getbCo2() {
        return bCo2;
    }

    public void setbCo2(Integer bCo2) {
        this.bCo2 = bCo2;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public Integer getBCo2() {
        return bCo2;
    }

    public void setBCo2(Integer b_co2) {
        this.bCo2 = b_co2;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getTankSize() {
        return tankSize;
    }

    public void setTankSize(String tank_size) {
        this.tankSize = tank_size;
    }

    public String getTowBracket() {
        return towBracket;
    }

    public void setTowBracket(String tow_bracket) {
        this.towBracket = tow_bracket;
    }

    public String getRim() {
        return rim;
    }

    public void setRim(String rim) {
        this.rim = rim;
    }

    public Integer getMaxKmPerYear() {
        return maxKmPerYear;
    }

    public void setMaxKmPerYear(Integer max_km_per_year) {
        this.maxKmPerYear = max_km_per_year;
    }

    public Integer getIdealKm() {
        return idealKm;
    }

    public void setIdealKm(Integer ideal_km) {
        this.idealKm = ideal_km;
    }

    public Integer getMaxKm() {
        return maxKm;
    }

    public void setMaxKm(Integer max_km) {
        this.maxKm = max_km;
    }

    public String getListPrice() {
        return listPrice;
    }

    public void setListPrice(String list_price) {
        this.listPrice = list_price;
    }

    public String getBenefitKindMonth() {
        return benefitKindMonth;
    }

    public void setBenefitKindMonth(String benefit_kind_month) {
        this.benefitKindMonth = benefit_kind_month;
    }

    public String getUpgradeCost() {
        return upgradeCost;
    }

    public void setUpgradeCost(String upgrade_cost) {
        this.upgradeCost = upgrade_cost;
    }

    public String getDowngradeBenefit() {
        return downgradeBenefit;
    }

    public void setDowngradeBenefit(String downgrade_benefit) {
        this.downgradeBenefit = downgrade_benefit;
    }
}
