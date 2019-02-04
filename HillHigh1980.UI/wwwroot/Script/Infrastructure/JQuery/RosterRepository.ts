module GScope {
    export module Infrastructure {
        export class RosterRepository implements RepositoryService.IRosterRepository {
            FindByName(name: string): Promise<Entity.Roster> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster/" + name,
                    method: "GET"
                });
            }
            ReadAll(): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            }
            FindById(id: number): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster/" + id,
                    method: "GET"
                });
            }
            CreateLocations(locations: [Entity.Location]): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations",
                    data: JSON.stringify(locations),
                    method: "Post"
                });
            }
        }
    }
}