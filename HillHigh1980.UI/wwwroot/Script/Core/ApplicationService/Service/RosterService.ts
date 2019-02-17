module GScope {
    export module ApplicationService {
        export module Service {
            export class RosterService implements IRosterService {
                private readonly _repository: RepositoryService.IRosterRepository;

                constructor(repository: RepositoryService.IRosterRepository) {
                    this._repository = repository;
                }

                FindRosterById(rosterId: number): Promise<Entity.Roster> {
                    return this._repository.FindById(rosterId);
                }
                FindRostersByName(filter: Entity.Filter): Promise<Entity.Roster[]> {
                    return this._repository.FindByName(filter);
                }
                GetAllRosters(): Promise<Entity.Roster[]> {
                    return this._repository.ReadAll();
                }

                CreateRosterLocations(locations: [Entity.Location]): Promise<any> {
                    return this._repository.CreateLocations(locations);
                }
                UpdateRosterLocation(location: Entity.Location): Promise<any> {
                    return this._repository.UpdateLocation(location);
                }
                DeleteRosterLocation(location: Entity.Location): Promise<any> {
                    return this._repository.DeleteLocation(location);
                }
            }
        }
    }
}