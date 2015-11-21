package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerAddress {

    /**
     */
    @ManyToOne(fetch = FetchType.EAGER)
    private Customer customer;

    /**
     */
    @ManyToOne(fetch = FetchType.EAGER)
    private Address address;
}
