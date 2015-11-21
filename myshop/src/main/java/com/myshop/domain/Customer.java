package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Customer {

    /**
     */
    @NotNull
    private String customerName;

    /**
     */
    @NotNull
    private Boolean isActive;

    /**
     */
    @NotNull
    private String webSite;

    /**
     */
    private String associatedSalesPersonNotes;
}
