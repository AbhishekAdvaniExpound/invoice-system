namespace my.company;

entity Products {
  key ID          : UUID;
      name        : String(100);
      price       : Decimal(10,2);
      createdAt   : Timestamp;
}
