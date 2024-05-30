package com.codigo.ecommerce.infrastructure.adapter;

import com.codigo.ecommerce.infrastructure.entity.OrderEntity;
import com.codigo.ecommerce.infrastructure.entity.OrderProductEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderProductCrudRepository extends CrudRepository<OrderProductEntity, Integer> {
    List<OrderProductEntity>  findByPkOrderEntity(OrderEntity orderEntity);
}
