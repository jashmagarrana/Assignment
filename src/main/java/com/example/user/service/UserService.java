package com.example.user.service;

import com.example.user.entity.User;

import java.util.Optional;

public interface UserService {
    public User createNewUser(User u);
    public User loginUser(User u);
    public User editUser(User u);
    public User forgetPassword(User u);
    public User changePassword(User u);
}
