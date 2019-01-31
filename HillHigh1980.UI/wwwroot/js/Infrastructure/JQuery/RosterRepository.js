var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterDetailsRepository = /** @class */ (function () {
            function RosterDetailsRepository() {
            }
            RosterDetailsRepository.prototype.ReadAll = function () {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            };
            RosterDetailsRepository.prototype.FindById = function (rosterId) {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            };
            RosterDetailsRepository.prototype.Update = function (roster) {
                throw new Error("Method not implemented.");
            };
            return RosterDetailsRepository;
        }());
        Infrastructure.RosterDetailsRepository = RosterDetailsRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterRepository.js.map