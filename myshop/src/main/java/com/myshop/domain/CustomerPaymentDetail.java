package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerPaymentDetail {

    /**
     */
    @ManyToOne
    private CustomerPayment paymentId;

    /**
     */
    @ManyToOne
    private CustomerInvoiceDetails invoiceLineNo;

    /**
     */
    private Double amount;
}
