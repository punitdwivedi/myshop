package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Address {

    /**
     */
    @ManyToOne(fetch = FetchType.EAGER)
    private AddressType addressType;

    /**
     */
    @NotNull
    private String addressLine1;

    /**
     */
    private String addressLine2;

    /**
     */
    @NotNull
    private String city;

    /**
     */
    @NotNull
    private String stateName;

    /**
     */
    @NotNull
    private String countryName;

    /**
     */
    @NotNull
    private String zipCode;

    /**
     */
    private String contactPerson;

    /**
     */
    @Size(min = 10)
    private String telephone;
}
