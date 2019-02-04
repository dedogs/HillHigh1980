module GScope {
    export module Infrastructure {
        export class RosterRepository implements RepositoryService.IRosterRepository<Entity.Roster> {
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
            Update(roster: Entity.Roster): JQuery.Promise<any> {
                var data1 = Utility.assign(roster);

                console.log(roster);
                console.log(data1);

                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Roster",
                    data: JSON.stringify(roster),
                    method: "Post"
                });
            }
        }
    }
}