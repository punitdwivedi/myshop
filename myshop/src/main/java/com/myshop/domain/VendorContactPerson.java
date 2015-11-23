package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class VendorContactPerson {

    /**
     */
    @ManyToOne
    private Vendor vendor;

    /**
     */
    private String vendorPosition;

    /**
     */
    @NotNull
    private String firstName;

    /**
     */
    @NotNull
    private String lastName;

    /**
     */
    @NotNull
    private String phone;

    /**
     */
    private String mobile;

    /**
     */
    private String email;

    /**
     */
    private String note;
}
