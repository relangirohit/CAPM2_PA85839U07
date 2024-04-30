using scp.cloud from '../db/schema';

service CatalogService {
    @readonly entity RequestUI as projection on cloud.RequestUI;
    @readonly entity RequestTypes as projection on cloud.RequestTypes;
    @readonly entity GlobalRegions as projection on cloud.GlobalRegions;
    @readonly entity Priorities as projection on cloud.Priorities;
    @readonly entity Countries as projection on cloud.Countries;
}
