// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.web;

import com.myshop.domain.Address;
import com.myshop.domain.AddressType;
import com.myshop.domain.Customer;
import com.myshop.domain.CustomerAddress;
import com.myshop.domain.CustomerContact;
import com.myshop.domain.PaymentTerm;
import com.myshop.domain.Product;
import com.myshop.domain.ProductCategory;
import com.myshop.domain.Users;
import com.myshop.domain.Vendor;
import com.myshop.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Address, String> ApplicationConversionServiceFactoryBean.getAddressToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.Address, java.lang.String>() {
            public String convert(Address address) {
                return new StringBuilder().append(address.getAddressLine1()).append(' ').append(address.getAddressLine2()).append(' ').append(address.getCity()).append(' ').append(address.getStateName()).toString();
            }
        };
    }
    
    public Converter<Long, Address> ApplicationConversionServiceFactoryBean.getIdToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.Address>() {
            public com.myshop.domain.Address convert(java.lang.Long id) {
                return Address.findAddress(id);
            }
        };
    }
    
    public Converter<String, Address> ApplicationConversionServiceFactoryBean.getStringToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.Address>() {
            public com.myshop.domain.Address convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Address.class);
            }
        };
    }
    
    public Converter<AddressType, String> ApplicationConversionServiceFactoryBean.getAddressTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.AddressType, java.lang.String>() {
            public String convert(AddressType addressType) {
                return new StringBuilder().append(addressType.getAddressType()).toString();
            }
        };
    }
    
    public Converter<Long, AddressType> ApplicationConversionServiceFactoryBean.getIdToAddressTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.AddressType>() {
            public com.myshop.domain.AddressType convert(java.lang.Long id) {
                return AddressType.findAddressType(id);
            }
        };
    }
    
    public Converter<String, AddressType> ApplicationConversionServiceFactoryBean.getStringToAddressTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.AddressType>() {
            public com.myshop.domain.AddressType convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AddressType.class);
            }
        };
    }
    
    public Converter<Customer, String> ApplicationConversionServiceFactoryBean.getCustomerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.Customer, java.lang.String>() {
            public String convert(Customer customer) {
                return new StringBuilder().append(customer.getCustomerName()).append(' ').append(customer.getWebSite()).append(' ').append(customer.getAssociatedSalesPersonNotes()).toString();
            }
        };
    }
    
    public Converter<Long, Customer> ApplicationConversionServiceFactoryBean.getIdToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.Customer>() {
            public com.myshop.domain.Customer convert(java.lang.Long id) {
                return Customer.findCustomer(id);
            }
        };
    }
    
    public Converter<String, Customer> ApplicationConversionServiceFactoryBean.getStringToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.Customer>() {
            public com.myshop.domain.Customer convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Customer.class);
            }
        };
    }
    
    public Converter<CustomerAddress, String> ApplicationConversionServiceFactoryBean.getCustomerAddressToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerAddress, java.lang.String>() {
            public String convert(CustomerAddress customerAddress) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, CustomerAddress> ApplicationConversionServiceFactoryBean.getIdToCustomerAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerAddress>() {
            public com.myshop.domain.CustomerAddress convert(java.lang.Long id) {
                return CustomerAddress.findCustomerAddress(id);
            }
        };
    }
    
    public Converter<String, CustomerAddress> ApplicationConversionServiceFactoryBean.getStringToCustomerAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerAddress>() {
            public com.myshop.domain.CustomerAddress convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerAddress.class);
            }
        };
    }
    
    public Converter<CustomerContact, String> ApplicationConversionServiceFactoryBean.getCustomerContactToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerContact, java.lang.String>() {
            public String convert(CustomerContact customerContact) {
                return new StringBuilder().append(customerContact.getFirstName()).append(' ').append(customerContact.getLastName()).append(' ').append(customerContact.getMobile()).append(' ').append(customerContact.getPhone()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerContact> ApplicationConversionServiceFactoryBean.getIdToCustomerContactConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerContact>() {
            public com.myshop.domain.CustomerContact convert(java.lang.Long id) {
                return CustomerContact.findCustomerContact(id);
            }
        };
    }
    
    public Converter<String, CustomerContact> ApplicationConversionServiceFactoryBean.getStringToCustomerContactConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerContact>() {
            public com.myshop.domain.CustomerContact convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerContact.class);
            }
        };
    }
    
    public Converter<PaymentTerm, String> ApplicationConversionServiceFactoryBean.getPaymentTermToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.PaymentTerm, java.lang.String>() {
            public String convert(PaymentTerm paymentTerm) {
                return new StringBuilder().append(paymentTerm.getPaymentTerm()).toString();
            }
        };
    }
    
    public Converter<Long, PaymentTerm> ApplicationConversionServiceFactoryBean.getIdToPaymentTermConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.PaymentTerm>() {
            public com.myshop.domain.PaymentTerm convert(java.lang.Long id) {
                return PaymentTerm.findPaymentTerm(id);
            }
        };
    }
    
    public Converter<String, PaymentTerm> ApplicationConversionServiceFactoryBean.getStringToPaymentTermConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.PaymentTerm>() {
            public com.myshop.domain.PaymentTerm convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PaymentTerm.class);
            }
        };
    }
    
    public Converter<Product, String> ApplicationConversionServiceFactoryBean.getProductToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.Product, java.lang.String>() {
            public String convert(Product product) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Product> ApplicationConversionServiceFactoryBean.getIdToProductConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.Product>() {
            public com.myshop.domain.Product convert(java.lang.Long id) {
                return Product.findProduct(id);
            }
        };
    }
    
    public Converter<String, Product> ApplicationConversionServiceFactoryBean.getStringToProductConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.Product>() {
            public com.myshop.domain.Product convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Product.class);
            }
        };
    }
    
    public Converter<ProductCategory, String> ApplicationConversionServiceFactoryBean.getProductCategoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.ProductCategory, java.lang.String>() {
            public String convert(ProductCategory productCategory) {
                return new StringBuilder().append(productCategory.getName()).append(' ').append(productCategory.getLastModifiedDate()).toString();
            }
        };
    }
    
    public Converter<Long, ProductCategory> ApplicationConversionServiceFactoryBean.getIdToProductCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.ProductCategory>() {
            public com.myshop.domain.ProductCategory convert(java.lang.Long id) {
                return ProductCategory.findProductCategory(id);
            }
        };
    }
    
    public Converter<String, ProductCategory> ApplicationConversionServiceFactoryBean.getStringToProductCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.ProductCategory>() {
            public com.myshop.domain.ProductCategory convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ProductCategory.class);
            }
        };
    }
    
    public Converter<Users, String> ApplicationConversionServiceFactoryBean.getUsersToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.Users, java.lang.String>() {
            public String convert(Users users) {
                return new StringBuilder().append(users.getEmailAddress()).append(' ').append(users.getFirstName()).append(' ').append(users.getLastName()).append(' ').append(users.getMobile()).toString();
            }
        };
    }
    
    public Converter<Long, Users> ApplicationConversionServiceFactoryBean.getIdToUsersConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.Users>() {
            public com.myshop.domain.Users convert(java.lang.Long id) {
                return Users.findUsers(id);
            }
        };
    }
    
    public Converter<String, Users> ApplicationConversionServiceFactoryBean.getStringToUsersConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.Users>() {
            public com.myshop.domain.Users convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Users.class);
            }
        };
    }
    
    public Converter<Vendor, String> ApplicationConversionServiceFactoryBean.getVendorToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.Vendor, java.lang.String>() {
            public String convert(Vendor vendor) {
                return new StringBuilder().append(vendor.getVendorName()).append(' ').append(vendor.getPhone()).toString();
            }
        };
    }
    
    public Converter<Long, Vendor> ApplicationConversionServiceFactoryBean.getIdToVendorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.Vendor>() {
            public com.myshop.domain.Vendor convert(java.lang.Long id) {
                return Vendor.findVendor(id);
            }
        };
    }
    
    public Converter<String, Vendor> ApplicationConversionServiceFactoryBean.getStringToVendorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.Vendor>() {
            public com.myshop.domain.Vendor convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Vendor.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAddressToStringConverter());
        registry.addConverter(getIdToAddressConverter());
        registry.addConverter(getStringToAddressConverter());
        registry.addConverter(getAddressTypeToStringConverter());
        registry.addConverter(getIdToAddressTypeConverter());
        registry.addConverter(getStringToAddressTypeConverter());
        registry.addConverter(getCustomerToStringConverter());
        registry.addConverter(getIdToCustomerConverter());
        registry.addConverter(getStringToCustomerConverter());
        registry.addConverter(getCustomerAddressToStringConverter());
        registry.addConverter(getIdToCustomerAddressConverter());
        registry.addConverter(getStringToCustomerAddressConverter());
        registry.addConverter(getCustomerContactToStringConverter());
        registry.addConverter(getIdToCustomerContactConverter());
        registry.addConverter(getStringToCustomerContactConverter());
        registry.addConverter(getPaymentTermToStringConverter());
        registry.addConverter(getIdToPaymentTermConverter());
        registry.addConverter(getStringToPaymentTermConverter());
        registry.addConverter(getProductToStringConverter());
        registry.addConverter(getIdToProductConverter());
        registry.addConverter(getStringToProductConverter());
        registry.addConverter(getProductCategoryToStringConverter());
        registry.addConverter(getIdToProductCategoryConverter());
        registry.addConverter(getStringToProductCategoryConverter());
        registry.addConverter(getUsersToStringConverter());
        registry.addConverter(getIdToUsersConverter());
        registry.addConverter(getStringToUsersConverter());
        registry.addConverter(getVendorToStringConverter());
        registry.addConverter(getIdToVendorConverter());
        registry.addConverter(getStringToVendorConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
