package com.assessment.service;

import com.assessment.model.User;
import com.assessment.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service("userService")
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> getAll() {
        List<User> users = new ArrayList<User>();
        Iterable<User> iterable = userRepository.findAll();
        Iterator<User> userIterator = iterable.iterator();
        while (userIterator.hasNext()) {
            users.add(userIterator.next());
        }
        return users;
    }
}
