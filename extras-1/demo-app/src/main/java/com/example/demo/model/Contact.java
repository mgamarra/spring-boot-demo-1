package com.example.demo.model;

public class Contact {
    private int id;
    private String name;
    private String address;
    private String city;
    private String state;
    private String phone_number;
    private int zip;

    public Contact(int id, String name, String address, String city, String state, String phone_number, int zip) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.city = city;
        this.state = state;
        this.phone_number = phone_number;
        this.zip = zip;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", zip=" + zip +
                '}';
    }
}
