package ml.trucking.services;

import ml.trucking.dao.OrderDao;
import ml.trucking.model.Order;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public class OrderDaoImpl implements OrderDao {
    private final Connection connection;
    public OrderDaoImpl(Connection connection){
        this.connection = connection;
    }
    @Override
    public void addOrder(Integer userId, String type, Integer weight, Date date) {
        try {
            try (PreparedStatement st = connection
                    .prepareStatement("INSERT INTO orders (userId, type, weight, date) VALUES (?, ?, ?, ?)")) {
                st.setInt(1, userId);
                st.setString(2, type);
                st.setInt(3, weight);
                st.setDate(4, date);
                st.executeUpdate();
            }
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public void deleteOrder(int id) {

    }

    @Override
    public List<Order> getAll(Date date) {
        return null;
    }

    @Override
    public int orderId(Integer userId) {
        return 0;
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
