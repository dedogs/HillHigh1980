var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Location = /** @class */ (function () {
            function Location() {
                this.locationId = 0;
                this.city = "";
                this.state = "";
                this.rosterId = 0;
            }
            Location.prototype.LocationId = function (locationId) {
                if (!GScope.Utility.is(locationId).nul().ok()) {
                    this.locationId = locationId;
                }
                return this.locationId;
            };
            Location.prototype.City = function (city) {
                if (!GScope.Utility.is(city).nul().ok()) {
                    this.city = city;
                }
                return this.city;
            };
            Location.prototype.State = function (state) {
                if (!GScope.Utility.is(state).nul().ok()) {
                    this.state = state;
                }
                return this.state;
            };
            Location.prototype.RosterId = function (rosterId) {
                if (!GScope.Utility.is(rosterId).nul().ok()) {
                    this.rosterId = rosterId;
                }
                return this.rosterId;
            };
            return Location;
        }());
        Entity.Location = Location;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Location.js.map