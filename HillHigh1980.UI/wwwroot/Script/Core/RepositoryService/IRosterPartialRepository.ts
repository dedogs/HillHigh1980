module GScope {
    export module RepositoryService {
        export interface IRosterPartialRepository {
            ReadAll(): Promise<any>;
            FindById(id: number): Promise<any>;
            FindByName(name: string): Promise<any>
        }
    }
}