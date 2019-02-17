var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterPartialRepository = /** @class */ (function () {
            function RosterPartialRepository() {
            }
            RosterPartialRepository.prototype.FindByName = function (name) {
                return $.ajax({
                    dataType: "html",
                    url: "/api/Roster/" + name,
                    method: "GET"
                });
            };
            RosterPartialRepository.prototype.ReadAll = function () {
                return $.ajax({
                    dataType: "html",
                    url: "/api/Roster",
                    method: "GET"
                });
            };
            RosterPartialRepository.prototype.FindById = function (id) {
                return $.ajax({
                    dataType: "html",
                    url: "/Roster/Index/" + id,
                    method: "GET"
                });
            };
            return RosterPartialRepository;
        }());
        Infrastructure.RosterPartialRepository = RosterPartialRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterPartialRepository.js.map
var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterRepository = /** @class */ (function () {
            function RosterRepository() {
                this.PartialViewReadAll = function (id) {
                    return $.ajax({
                        dataType: "html",
                        url: "/Roster/Index/" + id,
                        method: "GET"
                    });
                };
                this.PartialViewById = function (id) {
                    return $.ajax({
                        dataType: "html",
                        url: "/Roster/Index/" + id,
                        method: "GET"
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
                    method: "GET"
                });
            };
            RosterRepository.prototype.ReadAll = function () {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            };
            RosterRepository.prototype.FindById = function (id) {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster/" + id,
                    method: "GET"
                });
            };
            RosterRepository.prototype.CreateLocations = function (locations) {
                var _this = this;
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations",
                    data: JSON.stringify(locations),
                    method: "Post"
                }).then(function (location) {
                    return _this.PartialViewById(location[0].rosterId);
                });
            };
            RosterRepository.prototype.UpdateLocation = function (location) {
                var _this = this;
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "PUT"
                }).then(function (location) {
                    return _this.PartialViewById(location.rosterId);
                });
            };
            RosterRepository.prototype.DeleteLocation = function (location) {
                var _this = this;
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "DELETE"
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