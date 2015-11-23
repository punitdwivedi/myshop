package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerInvoiceDetails {

    /**
     */
    @ManyToOne
    private Customer customerId;

    /**
     */
    @ManyToOne
    private CustomerPoDetails customerPOLineNo;

    /**
     */
    private Double invoiceQty;

    /**
     */
    private String unit;

    /**
     */
    private Double unitPrice;

    /**
     */
    private String status;
}
