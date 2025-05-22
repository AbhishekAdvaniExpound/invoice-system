namespace my.invoice;

entity Invoice {
  key ID           : UUID;
      invoiceNo    : String(20);
      invoiceDate  : Date;
      sellerName   : String(100);
      sellerGSTIN  : String(20);
      buyerName    : String(100);
      buyerGSTIN   : String(20);
      stateCode    : String(5);
      totalTaxable : Decimal(15,2);
      totalCGST    : Decimal(15,2);
      totalSGST    : Decimal(15,2);
      totalIGST    : Decimal(15,2);
      grandTotal   : Decimal(15,2);
      currency     : String(3);
      bankName     : String(100);
      accountNo    : String(30);
      ifsc         : String(15);
      upiID        : String(100);
      createdAt    : Timestamp;
      createdBy    : String(50);

  items : Composition of many InvoiceItem on items.invoice = $self;
}

entity InvoiceItem {
  key ID           : UUID;
      invoice      : Association to Invoice;
      itemNo       : Integer;
      description  : String(100);
      hsn          : String(10);
      quantity     : Decimal(10,2);
      unitPrice    : Decimal(15,2);
      discount     : Decimal(15,2);
      taxableValue : Decimal(15,2);
      cgstAmount   : Decimal(15,2);
      sgstAmount   : Decimal(15,2);
      igstAmount   : Decimal(15,2);
      totalAmount  : Decimal(15,2);
}
