var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Location = /** @class */ (function () {
            function Location() {
            }
            Location.prototype.LocationId = function (locationId) {
                if (!GScope.Utility.is(locationId).nul().ok()) {
                    this._locationId = locationId;
                }
                return this._locationId;
            };
            Location.prototype.City = function (city) {
                if (!GScope.Utility.is(city).nul().ok()) {
                    this._city = city;
                }
                return this._city;
            };
            Location.prototype.State = function (state) {
                if (!GScope.Utility.is(state).nul().ok()) {
                    this._state = state;
                }
                return this._state;
            };
            Location.prototype.RosterId = function (rosterId) {
                if (!GScope.Utility.is(rosterId).nul().or().undef().ok()) {
                    this._rosterId = rosterId;
                }
                return this._rosterId;
            };
            return Location;
        }());
        Entity.Location = Location;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Location.js.map