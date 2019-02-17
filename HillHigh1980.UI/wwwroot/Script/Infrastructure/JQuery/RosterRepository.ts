module GScope {
    export module Infrastructure {
        export class RosterRepository implements RepositoryService.IRosterRepository {
            PartialViewReadAll: (id: number) => Promise<any> = (id: number) => {
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Index/" + id,
                    method: "GET"
                });
            };

            PartialViewById: (id: number) => Promise<any> = (id: number) => {
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Index/" + id,
                    method: "GET"
                });
            };

            FindByName(filter: Entity.Filter): Promise<any> {
                var result = {};
                Object.keys(filter).forEach((item) => {
                    result[item] = filter[item];
                });
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Search",
                    data: result,
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
                }).then((location: any) => {
                    return this.PartialViewById(location[0].rosterId);
                });
            }
            UpdateLocation(location: Entity.Location): Promise<any> {

                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "PUT"
                }).then((location: any) => {
                    return this.PartialViewById(location.rosterId);
                });
            }
            DeleteLocation(location: Entity.Location): Promise<any> {
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "DELETE"
                }).then((location: any) => {
                    return this.PartialViewById(location.rosterId);
                });;
            }
        }
    }
}