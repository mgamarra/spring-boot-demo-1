package com.example.demo.controller;

import com.example.demo.model.Contact;
import com.example.demo.services.AddressBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
class AddressBookController {

    @Autowired
    private AddressBookService addressBookService;

    @GetMapping("/home")
    public String home() {
        return "Welcome to AddressBook Application";
    }

    @GetMapping("/contacts")
    public List<Contact> getContacts() {
        return this.addressBookService.getContacts();
    }

    @GetMapping("/contacts/{contactId}")
    public Contact getContacts(@PathVariable long contactId) {
        return this.addressBookService.getContacts(contactId);

    }


    @PostMapping(path = "/addcontacts", consumes = "application/json")
    public Contact addContact(@RequestBody Contact contact) {
        return this.addressBookService.addContact(contact);
    }

    @PutMapping("/update")
    public Contact updateContact(@RequestBody Contact contact) {
        return this.addressBookService.updateContact(contact);
    }

}
