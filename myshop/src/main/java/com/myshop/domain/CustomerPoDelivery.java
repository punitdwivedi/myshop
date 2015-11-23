package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerPoDelivery {

    /**
     */
    @ManyToOne
    private CustomerPoDetails customerPoLineNo;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date shipOutDate;

    /**
     */
    private Double shipOutQuantity;

    /**
     */
    private Integer shipmentId;

    /**
     */
    private Integer shipmentLineNo;
}
