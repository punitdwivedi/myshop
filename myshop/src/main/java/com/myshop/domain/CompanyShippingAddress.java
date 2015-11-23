package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CompanyShippingAddress {

    /**
     */
    @NotNull
    private String street1;

    /**
     */
    private String street2;

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
    private Integer zip;

    /**
     */
    @NotNull
    private String country;

    /**
     */
    @NotNull
    private String contactPerson;

    /**
     */
    @NotNull
    private String telephone;
}
