package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerCreditMemo {

    /**
     */
    private Integer rejectedNo;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date issueDate;

    /**
     */
    @ManyToOne
    private CustomerPO customerPoId;

    /**
     */
    @ManyToOne
    private CustomerPoDetails customerPoLineNo;

    /**
     */
    private Double rejectedQty;

    /**
     */
    private String unit;

    /**
     */
    private Double unitPrice;

    /**
     */
    private String rejectionReason;
}
