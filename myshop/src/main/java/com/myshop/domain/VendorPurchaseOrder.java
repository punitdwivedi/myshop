package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class VendorPurchaseOrder {

    /**
     */
    @ManyToOne
    private Vendor vendor;

    /**
     */
    @ManyToOne
    private CompanyShippingAddress warehouse;

    /**
     */
    @NotNull
    private Boolean isStatusOpen;

    /**
     */
    private String note;
}
