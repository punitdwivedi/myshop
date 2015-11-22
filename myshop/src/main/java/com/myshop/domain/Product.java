package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Product {

    /**
     */
    @ManyToOne
    private Vendor vendor;

    /**
     */
    @NotNull
    private String productName;

    /**
     */
    @NotNull
    private String productType;

    /**
     */
    private Boolean isEnabled;

    /**
     */
    @ManyToOne
    private ProductCategory productCategoryId;

    /**
     */
    @ManyToOne
    private Customer customerId;

    /**
     */
    private String customerPartNo;

    /**
     */
    private String customerPartName;

    /**
     */
    private String unit;

    /**
     */
    private Double length;

    /**
     */
    private Double width;

    /**
     */
    private Double height;

    /**
     */
    private Double weight;

    /**
     */
    private String weightUnit;

    /**
     */
    private String specification;

    /**
     */
    private String productImage;

    /**
     */
    private String vendorPartNo;

    /**
     */
    private String vendorPartName;
}
