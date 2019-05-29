package ml.trucking.dao;

import ml.trucking.model.Order;


import java.sql.Date;
import java.util.List;

public interface OrderDao  extends CrudDao{

    void addOrder(Integer userId, String type, Integer weight, Date date);
    void deleteOrder(int id);
    List<Order> getAll(Date date);
    int orderId(Integer userId);
}
