package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class ProductInventory {

    /**
     */
    @ManyToOne
    private Product productId;

    /**
     */
    private Double inventoryQty;

    /**
     */
    @ManyToOne
    private CompanyShippingAddress warehouseNo;

    /**
     */
    private Double roomNo;

    /**
     */
    private Double shelfNo;

    /**
     */
    private Double seatNo;
}
