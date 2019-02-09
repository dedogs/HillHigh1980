﻿module GScope {
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

            FindByName(name: string): Promise<any> {
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
                }).done((location: any) => {
                    return this.PartialViewById(location.rosterId);
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
                }).done((location: any) => {
                    return this.PartialViewById(location.rosterId);
                });;
            }
        }
    }
}