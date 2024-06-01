package com.codigo.ecommerce.client;

import com.codigo.ecommerce.infrastructure.dto.ReniecDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "client-reniec", url="https://api.apis.net.pe/v2/reniec/")
public interface ReniecClient {

    @GetMapping("/dni")
    ReniecDto getInfoReniec(@RequestParam("numero") String numero,
                            @RequestHeader("Authorization") String authorization);
}