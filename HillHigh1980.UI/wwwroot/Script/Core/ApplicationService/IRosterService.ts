module GScope {
    export module ApplicationService {
        export interface IRosterService {
            FindRosterById(seedId: number): Entity.Roster;
            FindRostersByLastName(name: string): Entity.Roster[];
            GetAllRosters(): Entity.Roster[];
        }
    }
}