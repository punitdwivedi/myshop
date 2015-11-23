// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.web;

import com.myshop.domain.Address;
import com.myshop.domain.AddressType;
import com.myshop.domain.Customer;
import com.myshop.domain.CustomerAddress;
import com.myshop.domain.CustomerContact;
import com.myshop.domain.CustomerCreditMemo;
import com.myshop.domain.CustomerInvoice;
import com.myshop.domain.CustomerInvoiceDetails;
import com.myshop.domain.CustomerPO;
import com.myshop.domain.CustomerPayment;
import com.myshop.domain.CustomerPaymentDetail;
import com.myshop.domain.CustomerPoDelivery;
import com.myshop.domain.CustomerPoDetails;
import com.myshop.domain.PaymentTerm;
import com.myshop.domain.Product;
import com.myshop.domain.ProductCategory;
import com.myshop.domain.SalesChannel;
import com.myshop.domain.SalesChannelTranasaction;
import com.myshop.domain.Shipment;
import com.myshop.domain.ShipmentDetails;
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
                return new StringBuilder().append(addressType.getTypeName()).toString();
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
    
    public Converter<CustomerCreditMemo, String> ApplicationConversionServiceFactoryBean.getCustomerCreditMemoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerCreditMemo, java.lang.String>() {
            public String convert(CustomerCreditMemo customerCreditMemo) {
                return new StringBuilder().append(customerCreditMemo.getRejectedNo()).append(' ').append(customerCreditMemo.getIssueDate()).append(' ').append(customerCreditMemo.getRejectedQty()).append(' ').append(customerCreditMemo.getUnit()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerCreditMemo> ApplicationConversionServiceFactoryBean.getIdToCustomerCreditMemoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerCreditMemo>() {
            public com.myshop.domain.CustomerCreditMemo convert(java.lang.Long id) {
                return CustomerCreditMemo.findCustomerCreditMemo(id);
            }
        };
    }
    
    public Converter<String, CustomerCreditMemo> ApplicationConversionServiceFactoryBean.getStringToCustomerCreditMemoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerCreditMemo>() {
            public com.myshop.domain.CustomerCreditMemo convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerCreditMemo.class);
            }
        };
    }
    
    public Converter<CustomerInvoice, String> ApplicationConversionServiceFactoryBean.getCustomerInvoiceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerInvoice, java.lang.String>() {
            public String convert(CustomerInvoice customerInvoice) {
                return new StringBuilder().append(customerInvoice.getInvoiceDate()).append(' ').append(customerInvoice.getDueDate()).append(' ').append(customerInvoice.getStatus()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerInvoice> ApplicationConversionServiceFactoryBean.getIdToCustomerInvoiceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerInvoice>() {
            public com.myshop.domain.CustomerInvoice convert(java.lang.Long id) {
                return CustomerInvoice.findCustomerInvoice(id);
            }
        };
    }
    
    public Converter<String, CustomerInvoice> ApplicationConversionServiceFactoryBean.getStringToCustomerInvoiceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerInvoice>() {
            public com.myshop.domain.CustomerInvoice convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerInvoice.class);
            }
        };
    }
    
    public Converter<CustomerInvoiceDetails, String> ApplicationConversionServiceFactoryBean.getCustomerInvoiceDetailsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerInvoiceDetails, java.lang.String>() {
            public String convert(CustomerInvoiceDetails customerInvoiceDetails) {
                return new StringBuilder().append(customerInvoiceDetails.getInvoiceQty()).append(' ').append(customerInvoiceDetails.getUnit()).append(' ').append(customerInvoiceDetails.getUnitPrice()).append(' ').append(customerInvoiceDetails.getStatus()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerInvoiceDetails> ApplicationConversionServiceFactoryBean.getIdToCustomerInvoiceDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerInvoiceDetails>() {
            public com.myshop.domain.CustomerInvoiceDetails convert(java.lang.Long id) {
                return CustomerInvoiceDetails.findCustomerInvoiceDetails(id);
            }
        };
    }
    
    public Converter<String, CustomerInvoiceDetails> ApplicationConversionServiceFactoryBean.getStringToCustomerInvoiceDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerInvoiceDetails>() {
            public com.myshop.domain.CustomerInvoiceDetails convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerInvoiceDetails.class);
            }
        };
    }
    
    public Converter<CustomerPO, String> ApplicationConversionServiceFactoryBean.getCustomerPOToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerPO, java.lang.String>() {
            public String convert(CustomerPO customerPO) {
                return new StringBuilder().append(customerPO.getNote()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerPO> ApplicationConversionServiceFactoryBean.getIdToCustomerPOConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerPO>() {
            public com.myshop.domain.CustomerPO convert(java.lang.Long id) {
                return CustomerPO.findCustomerPO(id);
            }
        };
    }
    
    public Converter<String, CustomerPO> ApplicationConversionServiceFactoryBean.getStringToCustomerPOConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerPO>() {
            public com.myshop.domain.CustomerPO convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerPO.class);
            }
        };
    }
    
    public Converter<CustomerPayment, String> ApplicationConversionServiceFactoryBean.getCustomerPaymentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerPayment, java.lang.String>() {
            public String convert(CustomerPayment customerPayment) {
                return new StringBuilder().append(customerPayment.getReceivedDate()).append(' ').append(customerPayment.getReceivedAmount()).append(' ').append(customerPayment.getReferenceNo()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerPayment> ApplicationConversionServiceFactoryBean.getIdToCustomerPaymentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerPayment>() {
            public com.myshop.domain.CustomerPayment convert(java.lang.Long id) {
                return CustomerPayment.findCustomerPayment(id);
            }
        };
    }
    
    public Converter<String, CustomerPayment> ApplicationConversionServiceFactoryBean.getStringToCustomerPaymentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerPayment>() {
            public com.myshop.domain.CustomerPayment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerPayment.class);
            }
        };
    }
    
    public Converter<CustomerPaymentDetail, String> ApplicationConversionServiceFactoryBean.getCustomerPaymentDetailToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerPaymentDetail, java.lang.String>() {
            public String convert(CustomerPaymentDetail customerPaymentDetail) {
                return new StringBuilder().append(customerPaymentDetail.getAmount()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerPaymentDetail> ApplicationConversionServiceFactoryBean.getIdToCustomerPaymentDetailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerPaymentDetail>() {
            public com.myshop.domain.CustomerPaymentDetail convert(java.lang.Long id) {
                return CustomerPaymentDetail.findCustomerPaymentDetail(id);
            }
        };
    }
    
    public Converter<String, CustomerPaymentDetail> ApplicationConversionServiceFactoryBean.getStringToCustomerPaymentDetailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerPaymentDetail>() {
            public com.myshop.domain.CustomerPaymentDetail convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerPaymentDetail.class);
            }
        };
    }
    
    public Converter<CustomerPoDelivery, String> ApplicationConversionServiceFactoryBean.getCustomerPoDeliveryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerPoDelivery, java.lang.String>() {
            public String convert(CustomerPoDelivery customerPoDelivery) {
                return new StringBuilder().append(customerPoDelivery.getShipOutDate()).append(' ').append(customerPoDelivery.getShipOutQuantity()).append(' ').append(customerPoDelivery.getShipmentId()).append(' ').append(customerPoDelivery.getShipmentLineNo()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerPoDelivery> ApplicationConversionServiceFactoryBean.getIdToCustomerPoDeliveryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerPoDelivery>() {
            public com.myshop.domain.CustomerPoDelivery convert(java.lang.Long id) {
                return CustomerPoDelivery.findCustomerPoDelivery(id);
            }
        };
    }
    
    public Converter<String, CustomerPoDelivery> ApplicationConversionServiceFactoryBean.getStringToCustomerPoDeliveryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerPoDelivery>() {
            public com.myshop.domain.CustomerPoDelivery convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerPoDelivery.class);
            }
        };
    }
    
    public Converter<CustomerPoDetails, String> ApplicationConversionServiceFactoryBean.getCustomerPoDetailsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.CustomerPoDetails, java.lang.String>() {
            public String convert(CustomerPoDetails customerPoDetails) {
                return new StringBuilder().append(customerPoDetails.getQty()).append(' ').append(customerPoDetails.getUnit()).append(' ').append(customerPoDetails.getUnitPrice()).append(' ').append(customerPoDetails.getDesiredDeliveryDate()).toString();
            }
        };
    }
    
    public Converter<Long, CustomerPoDetails> ApplicationConversionServiceFactoryBean.getIdToCustomerPoDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.CustomerPoDetails>() {
            public com.myshop.domain.CustomerPoDetails convert(java.lang.Long id) {
                return CustomerPoDetails.findCustomerPoDetails(id);
            }
        };
    }
    
    public Converter<String, CustomerPoDetails> ApplicationConversionServiceFactoryBean.getStringToCustomerPoDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.CustomerPoDetails>() {
            public com.myshop.domain.CustomerPoDetails convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerPoDetails.class);
            }
        };
    }
    
    public Converter<PaymentTerm, String> ApplicationConversionServiceFactoryBean.getPaymentTermToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.PaymentTerm, java.lang.String>() {
            public String convert(PaymentTerm paymentTerm) {
                return new StringBuilder().append(paymentTerm.getTerm()).toString();
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
                return new StringBuilder().append(product.getProductName()).append(' ').append(product.getProductType()).append(' ').append(product.getCustomerPartNo()).append(' ').append(product.getCustomerPartName()).toString();
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
    
    public Converter<SalesChannel, String> ApplicationConversionServiceFactoryBean.getSalesChannelToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.SalesChannel, java.lang.String>() {
            public String convert(SalesChannel salesChannel) {
                return new StringBuilder().append(salesChannel.getSalesChannelName()).append(' ').append(salesChannel.getSalesChannelCommission()).append(' ').append(salesChannel.getNote()).toString();
            }
        };
    }
    
    public Converter<Long, SalesChannel> ApplicationConversionServiceFactoryBean.getIdToSalesChannelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.SalesChannel>() {
            public com.myshop.domain.SalesChannel convert(java.lang.Long id) {
                return SalesChannel.findSalesChannel(id);
            }
        };
    }
    
    public Converter<String, SalesChannel> ApplicationConversionServiceFactoryBean.getStringToSalesChannelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.SalesChannel>() {
            public com.myshop.domain.SalesChannel convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SalesChannel.class);
            }
        };
    }
    
    public Converter<SalesChannelTranasaction, String> ApplicationConversionServiceFactoryBean.getSalesChannelTranasactionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.SalesChannelTranasaction, java.lang.String>() {
            public String convert(SalesChannelTranasaction salesChannelTranasaction) {
                return new StringBuilder().append(salesChannelTranasaction.getSoldDate()).append(' ').append(salesChannelTranasaction.getSoldQty()).append(' ').append(salesChannelTranasaction.getUnit()).append(' ').append(salesChannelTranasaction.getUnitPrice()).toString();
            }
        };
    }
    
    public Converter<Long, SalesChannelTranasaction> ApplicationConversionServiceFactoryBean.getIdToSalesChannelTranasactionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.SalesChannelTranasaction>() {
            public com.myshop.domain.SalesChannelTranasaction convert(java.lang.Long id) {
                return SalesChannelTranasaction.findSalesChannelTranasaction(id);
            }
        };
    }
    
    public Converter<String, SalesChannelTranasaction> ApplicationConversionServiceFactoryBean.getStringToSalesChannelTranasactionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.SalesChannelTranasaction>() {
            public com.myshop.domain.SalesChannelTranasaction convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SalesChannelTranasaction.class);
            }
        };
    }
    
    public Converter<Shipment, String> ApplicationConversionServiceFactoryBean.getShipmentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.Shipment, java.lang.String>() {
            public String convert(Shipment shipment) {
                return new StringBuilder().append(shipment.getShippingDate()).append(' ').append(shipment.getShippingFee()).append(' ').append(shipment.getCarrier()).append(' ').append(shipment.getTrackingNumber()).toString();
            }
        };
    }
    
    public Converter<Long, Shipment> ApplicationConversionServiceFactoryBean.getIdToShipmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.Shipment>() {
            public com.myshop.domain.Shipment convert(java.lang.Long id) {
                return Shipment.findShipment(id);
            }
        };
    }
    
    public Converter<String, Shipment> ApplicationConversionServiceFactoryBean.getStringToShipmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.Shipment>() {
            public com.myshop.domain.Shipment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Shipment.class);
            }
        };
    }
    
    public Converter<ShipmentDetails, String> ApplicationConversionServiceFactoryBean.getShipmentDetailsToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.myshop.domain.ShipmentDetails, java.lang.String>() {
            public String convert(ShipmentDetails shipmentDetails) {
                return new StringBuilder().append(shipmentDetails.getShippedQuantity()).toString();
            }
        };
    }
    
    public Converter<Long, ShipmentDetails> ApplicationConversionServiceFactoryBean.getIdToShipmentDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.myshop.domain.ShipmentDetails>() {
            public com.myshop.domain.ShipmentDetails convert(java.lang.Long id) {
                return ShipmentDetails.findShipmentDetails(id);
            }
        };
    }
    
    public Converter<String, ShipmentDetails> ApplicationConversionServiceFactoryBean.getStringToShipmentDetailsConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.myshop.domain.ShipmentDetails>() {
            public com.myshop.domain.ShipmentDetails convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ShipmentDetails.class);
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
                return new StringBuilder().append(vendor.getVendorName()).append(' ').append(vendor.getPhoneNumber()).toString();
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
        registry.addConverter(getCustomerCreditMemoToStringConverter());
        registry.addConverter(getIdToCustomerCreditMemoConverter());
        registry.addConverter(getStringToCustomerCreditMemoConverter());
        registry.addConverter(getCustomerInvoiceToStringConverter());
        registry.addConverter(getIdToCustomerInvoiceConverter());
        registry.addConverter(getStringToCustomerInvoiceConverter());
        registry.addConverter(getCustomerInvoiceDetailsToStringConverter());
        registry.addConverter(getIdToCustomerInvoiceDetailsConverter());
        registry.addConverter(getStringToCustomerInvoiceDetailsConverter());
        registry.addConverter(getCustomerPOToStringConverter());
        registry.addConverter(getIdToCustomerPOConverter());
        registry.addConverter(getStringToCustomerPOConverter());
        registry.addConverter(getCustomerPaymentToStringConverter());
        registry.addConverter(getIdToCustomerPaymentConverter());
        registry.addConverter(getStringToCustomerPaymentConverter());
        registry.addConverter(getCustomerPaymentDetailToStringConverter());
        registry.addConverter(getIdToCustomerPaymentDetailConverter());
        registry.addConverter(getStringToCustomerPaymentDetailConverter());
        registry.addConverter(getCustomerPoDeliveryToStringConverter());
        registry.addConverter(getIdToCustomerPoDeliveryConverter());
        registry.addConverter(getStringToCustomerPoDeliveryConverter());
        registry.addConverter(getCustomerPoDetailsToStringConverter());
        registry.addConverter(getIdToCustomerPoDetailsConverter());
        registry.addConverter(getStringToCustomerPoDetailsConverter());
        registry.addConverter(getPaymentTermToStringConverter());
        registry.addConverter(getIdToPaymentTermConverter());
        registry.addConverter(getStringToPaymentTermConverter());
        registry.addConverter(getProductToStringConverter());
        registry.addConverter(getIdToProductConverter());
        registry.addConverter(getStringToProductConverter());
        registry.addConverter(getProductCategoryToStringConverter());
        registry.addConverter(getIdToProductCategoryConverter());
        registry.addConverter(getStringToProductCategoryConverter());
        registry.addConverter(getSalesChannelToStringConverter());
        registry.addConverter(getIdToSalesChannelConverter());
        registry.addConverter(getStringToSalesChannelConverter());
        registry.addConverter(getSalesChannelTranasactionToStringConverter());
        registry.addConverter(getIdToSalesChannelTranasactionConverter());
        registry.addConverter(getStringToSalesChannelTranasactionConverter());
        registry.addConverter(getShipmentToStringConverter());
        registry.addConverter(getIdToShipmentConverter());
        registry.addConverter(getStringToShipmentConverter());
        registry.addConverter(getShipmentDetailsToStringConverter());
        registry.addConverter(getIdToShipmentDetailsConverter());
        registry.addConverter(getStringToShipmentDetailsConverter());
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
