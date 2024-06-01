package com.codigo.ecommerce.infrastructure.mapper;

import com.codigo.ecommerce.domain.Order;
import com.codigo.ecommerce.infrastructure.entity.OrderEntity;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring", uses = {UserMapper.class})
public interface OrderMapper {
    @Mappings(
            {
                    @Mapping(source = "id", target = "id"),
                    @Mapping(source = "dateCreated", target ="dateCreated" ),
                    @Mapping(source = "user", target = "user")

            }
    )
    Order toOrder (OrderEntity orderEntity);
    Iterable<Order> toOrders(Iterable<OrderEntity> orderEntities);
    @InheritInverseConfiguration
    OrderEntity toOrderEntity( Order order);
}
