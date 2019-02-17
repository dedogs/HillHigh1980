module GScope {
    export module ApplicationService {
        export interface IRosterService {
            FindRosterById(rosterId: number): Promise<Entity.Roster>;
            FindRostersByName(rosterName: string): Promise<Entity.Roster[]>;
            GetAllRosters(): Promise<Entity.Roster[]>;
            CreateRosterLocations(locations: [Entity.Location]): Promise<any>;
            UpdateRosterLocation(location: Entity.Location): Promise<any>;
            DeleteRosterLocation(location: Entity.Location): Promise<any>;
        }
    }
}