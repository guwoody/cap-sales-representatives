using {
  cuid,
  managed,
  Country
} from '@sap/cds/common';

namespace my.salesrep;

entity SalesRepresentatives : cuid, managed {
  firstName    : String                                   @title: '{i18n>FirstName}';
  lastName     : String                                   @title: '{i18n>LastName}';
  birthDate    : Date                                     @title: '{i18n>BirthDate}';
  email        : String                                   @title: '{i18n>Email}';
  phoneNumber  : String                                   @title: '{i18n>PhoneNumber}';
  country      : Country                                  @title: '{i18n>Country}';
  superior     : Association to one SalesRepresentatives  @title: '{i18n>Superior}';
  subordinates : Composition of many SalesRepresentatives @title: '{i18n>Subordinates}'
                   on subordinates.superior = $self;
  active       : Boolean                                  @title: '{i18n>Active}';
}
