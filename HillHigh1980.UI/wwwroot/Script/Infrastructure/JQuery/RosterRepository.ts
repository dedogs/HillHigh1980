module GScope {
    export module Infrastructure {
        export class RosterDetailsRepository implements RepositoryService.IRosterRepository {
            ReadAll(): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            }
            FindById(rosterId: number): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });            }
            Update(roster: Entity.Roster): JQuery.Promise<any> {
                throw new Error("Method not implemented.");
            }
        }
    }
}