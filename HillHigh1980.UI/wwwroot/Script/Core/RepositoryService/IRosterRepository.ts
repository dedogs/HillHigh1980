module GScope {
    export module RepositoryService {
        export interface IRosterRepository {
            ReadAll(): JQuery.Promise<any>;
            FindById(rosterId: number): JQuery.Promise<any>;
            Update(roster: GScope.Entity.Roster): JQuery.Promise<any>;
        }
    }
}