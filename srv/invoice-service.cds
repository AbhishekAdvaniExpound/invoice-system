using my.invoice from '../db/schema';
using { API_BUSINESS_PARTNER as bp } from './external/API_BUSINESS_PARTNER';

@protocol:'odata-v4'
service InvoiceService {
  entity Invoices as projection on invoice.Invoice;
  entity InvoiceItems as projection on invoice.InvoiceItem;
  entity BusinessPartners as projection on bp.A_BusinessPartner;

}



