module GScope {
    export module Infrastructure {
        export class RosterRepository implements RepositoryService.IRosterRepository {
            setAntiforgery = (): {} => {
                var antiforgeryVerification = new Antiforgery("XSRF-Token");
                var antiforgery = {};

                antiforgery[antiforgeryVerification.HeaderName] = antiforgeryVerification.value();

                return antiforgery;
            }

            GetGPS: (location: Entity.Location) => JQuery.Promise<Entity.Location> = (location: Entity.Location) => {
                return $.ajax({
                    dataType: "json",
                    url: "http://dev.virtualearth.net/REST/v1/Locations?countryRegion=" + location.Country + "&adminDistrict=" + location.State + "&locality=" + location.City + "&key=An9kkg2bad9Hot2soadq7tL_NllNH7d_PvWUUUtbGyxCWjiBFmPeChD0Ec8FbmyZ",
                    method: "GET",
                    cache: false
                }).then(function (result: any) {
                    location.Latitude = result.resourceSets[0].resources[0].point.coordinates[0];
                    location.Longitude = result.resourceSets[0].resources[0].point.coordinates[1];

                    return location;
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
            CreateLocations(location: Entity.Location): JQuery.Promise<any> {
                var that = this;
                return this.GetGPS(location).then(function (result: Entity.Location) {
                    return $.ajax({
                        headers: that.setAntiforgery(),
                        dataType: "json",
                        contentType: "application/json",
                        url: "/api/Locations",
                        data: JSON.stringify(result),
                        method: "Post",
                        cache: false
                    }).then((location: any) => {
                        return that.PartialViewById(location.rosterId);
                    });
                })
            }
            UpdateLocation(location: Entity.Location): Promise<any> {
                return $.ajax({
                    headers: this.setAntiforgery(),
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "PUT",
                    cache: false
                }).then((location: any) => {
                    return this.PartialViewById(location.rosterId);
                });
            }
            DeleteLocation(location: Entity.Location): Promise<any> {
                return $.ajax({
                    headers: this.setAntiforgery(),
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