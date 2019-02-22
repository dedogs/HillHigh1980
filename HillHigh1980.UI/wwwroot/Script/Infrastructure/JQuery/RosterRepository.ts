module GScope {
    export module Infrastructure {
        export class RosterRepository implements RepositoryService.IRosterRepository {
            PartialViewReadAll: (id: number) => Promise<any> = (id: number) => {
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Index/" + id,
                    method: "GET",
                    cache: false
                });
            };

            PartialViewById: (id: number) => Promise<any> = (id: number) => {
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Index/" + id,
                    method: "GET",
                    cache: false
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
                    method: "GET",
                    cache: false
                });
            }
            ReadAll(): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET",
                    cache: false
                });
            }
            FindById(id: number): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster/" + id,
                    method: "GET",
                    cache: false
                });
            }
            CreateLocations(locations: [Entity.Location]): JQuery.Promise<any> {
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations",
                    data: JSON.stringify(locations),
                    method: "Post",
                    cache: false
                }).then((locations: any) => {
                    return this.PartialViewById(locations[0].rosterId);
                });
            }
            UpdateLocation(location: Entity.Location): Promise<any> {

                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "POST",
                    cache: false
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
                    method: "DELETE",
                    cache: false
                }).then((location: any) => {
                    return this.PartialViewById(location.rosterId);
                });;
            }
        }
    }
}