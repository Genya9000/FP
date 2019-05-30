package ml.trucking.services;

import java.sql.*;

import java.util.List;
import java.util.Optional;

import ml.trucking.dao.UserDao;
import ml.trucking.model.User;


public class UserDaoImpl implements UserDao {
    private final Connection connection;

    public UserDaoImpl(Connection connection) {
        this.connection = connection;
    }

    @Override
    public void addUser(String name, String phone, String email, String password) {
        try {
            try (PreparedStatement st = connection
                    .prepareStatement("INSERT INTO users (name, phone, email, password) VALUES (?, ?, ?, ?)")) {
                st.setString(1, name);
                st.setString(2, phone);
                st.setString(3, email);
                st.setString(4, password);
                st.executeUpdate();
            }
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public void deleteUser(String password) {
        try {
            try (PreparedStatement st = connection
                    .prepareStatement("DELETE FROM users  WHERE password = ?")) {
                st.setString(1, password);

                st.executeUpdate();
            }
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }

    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public int UserId(String email) {
        try {
            PreparedStatement st = connection
                    .prepareStatement("SELECT id FROM users  WHERE email = " + email + "");


            ResultSet resultSet = st.executeQuery();
            return resultSet.getInt("id");

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public Optional find(Integer id) {
        return Optional.empty();
    }

    @Override
    public void save(Object model) {

    }

    @Override
    public void update(Object model) {

    }

    @Override
    public void delete(Integer id) {

    }

    @Override
    public List findAll() {
        return null;
    }
}
