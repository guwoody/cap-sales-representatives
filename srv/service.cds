using my.salesrep as my from '../db/schema';

service SalesRepService {
    @readonly entity SalesRepresentatives as projection on my.SalesRepresentatives;

    extend projection SalesRepresentatives with {
        @cds.persistence.skip
        firstName || ' ' || lastName as fullName : String @title: '{i18n>Name}',
    };

    annotate SalesRepresentatives with {
        email @Communication.IsEmailAddress;
        phoneNumber @Communication.IsPhoneNumber;
    }
    
}
