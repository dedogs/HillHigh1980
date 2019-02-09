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