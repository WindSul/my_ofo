package com.lk.ofo.dao;

import com.lk.ofo.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDao {

	/**
	 * @param offset
	 * @param limit
	 * @return
	 */
	List<Order> queryAllOrder(@Param("offset") int offset, @Param("limit") int limit);

	
	/**
	 * 通过id查询订单
	 * @param id
	 * @return
	 */
	Order queryOrderById (int id);

	/**
	 * 添加Order
	 * @return order
	 */
	Integer add(Order order);

    /**
     *
     * @param order
     * @return
     */
    Boolean update(Order order);
}
