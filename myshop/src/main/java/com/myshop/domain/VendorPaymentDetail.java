package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class VendorPaymentDetail {

    /**
     */
    @ManyToOne
    private VendorPayment vendorPaymentId;

    /**
     */
    @ManyToOne
    private VendorPoDetail vendorPoLineNo;

    /**
     */
    private Double unitPrice;

    /**
     */
    private Double qty;
}
