package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Vendor {

    /**
     */
    @ManyToOne
    private PaymentTerm paymentTerm;

    /**
     */
    @NotNull
    private String vendorName;

    /**
     */
    @NotNull
    @Size(min = 10)
    private String phoneNumber;
}
