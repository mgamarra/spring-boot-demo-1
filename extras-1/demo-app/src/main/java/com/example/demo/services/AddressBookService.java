package com.example.demo.services;

import com.example.demo.model.Contact;

import java.util.List;

public interface AddressBookService {

    public List<Contact> getContacts();

    public Contact getContacts(long contactId);

    public Contact addContact(Contact contact);

    public Contact updateContact(Contact contact);

}
