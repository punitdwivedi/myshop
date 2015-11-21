package com.myshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Users {

    /**
     */
    @NotNull
    @Size(min = 6)
    private String emailAddress;

    /**
     */
    @NotNull
    @Size(min = 3)
    private String firstName;

    /**
     */
    @NotNull
    @Size(min = 3)
    private String lastName;

    /**
     */
    @NotNull
    @Size(min = 10)
    private String mobile;

    /**
     */
    @NotNull
    @Size(min = 10)
    private String phone;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dob;

    /**
     */
    private String note;

    /**
     */
    @NotNull
    private Boolean enable;

    /**
     */
    @NotNull
    private Boolean isOwner;

    /**
     */
    @NotNull
    private String jobTitle;
}
