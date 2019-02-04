module GScope {
    export module RepositoryService {
        export interface IRosterRepository {
            ReadAll(): Promise<any>;
            FindById(id: number): Promise<any>;
            FindByName(name: string):Promise<any>
            CreateLocations(locations: [Entity.Location]): Promise<any>;
        }
    }
}