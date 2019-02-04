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
                FindRostersByLastName(rosterName: string): Promise<Entity.Roster[]> {
                    return this._repository.FindByName(rosterName);
                }
                GetAllRosters(): Promise<Entity.Roster[]> {
                    return this._repository.ReadAll();
                }

                CreateRosterLocations(locations: [Entity.Location]): Promise<Entity.Roster> {
                    return this._repository.CreateLocations(locations);
                }
            }
        }
    }
}