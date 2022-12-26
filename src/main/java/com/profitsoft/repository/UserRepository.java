package com.profitsoft.repository;

import com.profitsoft.model.User;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {
  private static final List<User> userList = new ArrayList<>();

  static {
    userList.add(new User("albert678", "qwerty", "Albert"));
    userList.add(new User("rafaellll", "1111", "Rafael"));
    userList.add(new User("johnny23", "12345", "John"));
  }

  public static List<User> getAllUsers() {
    return userList;
  }
}
