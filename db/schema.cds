using {
  cuid,
  managed,
  Country
} from '@sap/cds/common';

namespace my.salesrep;

entity SalesRepresentatives : cuid, managed {
  firstName    : String;
  lastName     : String;
  department   : String;
  birthDate    : Date;
  email        : String;
  phoneNumber  : String;
  country      : Country;
  superior     : Association to one SalesRepresentatives;
  subordinates : Composition of many SalesRepresentatives
                   on subordinates.superior = $self;
  active       : Boolean;
}
