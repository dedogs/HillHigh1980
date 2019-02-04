module GScope {
    export module ApplicationService {
        export module Service {
            export class RosterService implements IRosterService {
                private readonly _repository: RepositoryService.IRosterRepository<Entity.Roster>;

                constructor(repository: RepositoryService.IRosterRepository<Entity.Roster>) {
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

                UpdateRoster(roster: Entity.Roster): Promise<Entity.Roster> {
                    return this._repository.Update(roster);
                }
            }
        }
    }
}