module GScope {
    export module Infrastructure {
        export class RosterPartialRepository implements RepositoryService.IRosterPartialRepository {
            FindByName(name: string): Promise<Entity.Roster> {
                return $.ajax({
                    dataType: "html",
                    url: "/api/Roster/" + name,
                    method: "GET"
                });
            }
            ReadAll(): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "html",
                    url: "/api/Roster",
                    method: "GET"
                });
            }
            FindById(id: number): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Index/" + id,
                    method: "GET"
                });
            }

        }
    }
}