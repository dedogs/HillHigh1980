module GScope {
    export module RepositoryService {
        export interface IRosterRepository {
            ReadAll(): Promise<any>;
            FindById(id: number): Promise<any>;
            FindByName(filter: Entity.Filter):Promise<any>
            CreateLocations(locations: Entity.Location): JQuery.Promise<any>;
            UpdateLocation(location: Entity.Location): Promise<any>;
            DeleteLocation(location: Entity.Location): Promise<any>;
            GetGPS: (location:Entity.Location) => JQuery.Promise<any>;
            PartialViewById: (id: number) => Promise<any>
        }
    }
}