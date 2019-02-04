var GScope;
(function (GScope) {
    var ApplicationService;
    (function (ApplicationService) {
        var Service;
        (function (Service) {
            var RosterService = /** @class */ (function () {
                function RosterService(repository) {
                    this._repository = repository;
                }
                RosterService.prototype.FindRosterById = function (rosterId) {
                    return this._repository.FindById(rosterId);
                };
                RosterService.prototype.FindRostersByLastName = function (rosterName) {
                    return this._repository.FindByName(rosterName);
                };
                RosterService.prototype.GetAllRosters = function () {
                    return this._repository.ReadAll();
                };
                RosterService.prototype.UpdateRoster = function (roster) {
                    return this._repository.Update(roster);
                };
                return RosterService;
            }());
            Service.RosterService = RosterService;
        })(Service = ApplicationService.Service || (ApplicationService.Service = {}));
    })(ApplicationService = GScope.ApplicationService || (GScope.ApplicationService = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterService.js.map