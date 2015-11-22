package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Vendor {

    /**
     */
    @NotNull
    private String vendorName;

    /**
     */
    @ManyToOne
    private PaymentTerm paymentTerm;

    /**
     */
    private int phone;
}
