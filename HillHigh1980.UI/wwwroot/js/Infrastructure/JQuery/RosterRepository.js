var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterRepository = /** @class */ (function () {
            function RosterRepository() {
                this.setAntiforgery = function () {
                    var antiforgeryVerification = new Infrastructure.Antiforgery("XSRF-Token");
                    var antiforgery = {};
                    antiforgery[antiforgeryVerification.HeaderName] = antiforgeryVerification.value();
                    return antiforgery;
                };
                this.GetGPS = function (location) {
                    return $.ajax({
                        dataType: "json",
                        url: "http://dev.virtualearth.net/REST/v1/Locations?countryRegion=" + location.Country + "&adminDistrict=" + location.State + "&locality=" + location.City + "&key=An9kkg2bad9Hot2soadq7tL_NllNH7d_PvWUUUtbGyxCWjiBFmPeChD0Ec8FbmyZ",
                        method: "GET",
                        cache: false
                    }).then(function (result) {
                        location.Latitude = result.resourceSets[0].resources[0].point.coordinates[0];
                        location.Longitude = result.resourceSets[0].resources[0].point.coordinates[1];
                        return location;
                    });
                };
                this.PartialViewById = function (id) {
                    return $.ajax({
                        dataType: "html",
                        url: "/Roster/Index/" + id,
                        method: "GET",
                        cache: false
                    });
                };
            }
            RosterRepository.prototype.FindByName = function (filter) {
                var result = {};
                Object.keys(filter).forEach(function (item) {
                    result[item] = filter[item];
                });
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Search",
                    data: result,
                    method: "GET",
                    cache: false
                });
            };
            RosterRepository.prototype.ReadAll = function () {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET",
                    cache: false
                });
            };
            RosterRepository.prototype.FindById = function (id) {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster/" + id,
                    method: "GET",
                    cache: false
                });
            };
            RosterRepository.prototype.CreateLocations = function (location) {
                var that = this;
                return this.GetGPS(location).then(function (result) {
                    return $.ajax({
                        headers: that.setAntiforgery(),
                        dataType: "json",
                        contentType: "application/json",
                        url: "/api/Locations",
                        data: JSON.stringify(result),
                        method: "Post",
                        cache: false
                    }).then(function (location) {
                        return that.PartialViewById(location.rosterId);
                    });
                });
            };
            RosterRepository.prototype.UpdateLocation = function (location) {
                var _this = this;
                return $.ajax({
                    headers: this.setAntiforgery(),
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "PUT",
                    cache: false
                }).then(function (location) {
                    return _this.PartialViewById(location.rosterId);
                });
            };
            RosterRepository.prototype.DeleteLocation = function (location) {
                var _this = this;
                return $.ajax({
                    headers: this.setAntiforgery(),
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "DELETE",
                    cache: false
                }).then(function (location) {
                    return _this.PartialViewById(location.rosterId);
                });
                ;
            };
            return RosterRepository;
        }());
        Infrastructure.RosterRepository = RosterRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterRepository.js.map