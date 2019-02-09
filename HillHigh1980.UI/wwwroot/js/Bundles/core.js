//# sourceMappingURL=IRosterService.js.map
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
                RosterService.prototype.CreateRosterLocations = function (locations) {
                    return this._repository.CreateLocations(locations);
                };
                RosterService.prototype.UpdateRosterLocation = function (location) {
                    return this._repository.UpdateLocation(location);
                };
                RosterService.prototype.DeleteRosterLocation = function (location) {
                    return this._repository.DeleteLocation(location);
                };
                return RosterService;
            }());
            Service.RosterService = RosterService;
        })(Service = ApplicationService.Service || (ApplicationService.Service = {}));
    })(ApplicationService = GScope.ApplicationService || (GScope.ApplicationService = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterService.js.map
//# sourceMappingURL=IRosterPartialRepository.js.map
//# sourceMappingURL=IRosterRepository.js.map