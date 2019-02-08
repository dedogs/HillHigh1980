var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterRepository = /** @class */ (function () {
            function RosterRepository() {
            }
            RosterRepository.prototype.FindByName = function (name) {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster/" + name,
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
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations",
                    data: JSON.stringify(locations),
                    method: "Post"
                });
            };
            RosterRepository.prototype.UpdateLocation = function (location) {
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "PUT"
                });
            };
            RosterRepository.prototype.DeleteLocation = function (location) {
                return $.ajax({
                    dataType: "json",
                    contentType: "application/json",
                    url: "/api/Locations/" + location.LocationId,
                    data: JSON.stringify(location),
                    method: "DELETE"
                });
            };
            return RosterRepository;
        }());
        Infrastructure.RosterRepository = RosterRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterRepository.js.map