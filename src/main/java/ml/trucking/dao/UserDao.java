package ml.trucking.dao;

import ml.trucking.model.User;

import java.util.List;

public interface UserDao extends CrudDao {

    void addUser(String name, String phone, String email, String password);
    void deleteUser(String password);
    List<User> getAll();
    int UserId(String email);
}
