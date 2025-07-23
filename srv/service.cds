using my.salesrep as my from '../db/schema';

service SalesRepService {
    @readonly entity SalesRepresentatives as projection on my.SalesRepresentatives;
}
