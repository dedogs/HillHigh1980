module GScope {
    export module ApplicationService {
        export interface IRosterService {
            FindRosterById(rosterId: number): Promise<Entity.Roster>;
            FindRostersByLastName(rosterName: string): Promise<Entity.Roster[]>;
            GetAllRosters(): Promise<Entity.Roster[]>;
            UpdateRoster(roster: Entity.Roster): Promise<Entity.Roster>;
        }
    }
}