module GScope {
    export module RepositoryService {
        export interface IRosterRepository<T> {
            ReadAll(): Promise<any>;
            FindById(id: number): Promise<any>;
            FindByName(name: string):Promise<any>
            Update(obj: T): Promise<any>;
        }
    }
}