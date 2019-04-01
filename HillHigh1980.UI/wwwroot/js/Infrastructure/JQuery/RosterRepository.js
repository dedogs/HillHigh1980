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
                this.PartialViewReadAll = function (id) {
                    return $.ajax({
                        dataType: "html",
                        url: "/Roster/Index/" + id,
                        method: "GET",
                        cache: false
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
            RosterRepository.prototype.CreateLocations = function (locations) {
                var _this = this;
                return $.ajax({
                    headers: this.setAntiforgery(),
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations",
                    data: JSON.stringify(locations),
                    method: "Post",
                    cache: false
                }).then(function (location) {
                    return _this.PartialViewById(location.rosterId);
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