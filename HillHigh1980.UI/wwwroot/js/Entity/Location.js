var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Location = /** @class */ (function () {
            function Location(headerName, requestToken) {
                this.requestToken = requestToken;
                this.headerName = headerName;
            }
            Object.defineProperty(Location.prototype, "LocationId", {
                get: function () {
                    return this.locationId;
                },
                set: function (locationId) {
                    this.locationId = locationId;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Location.prototype, "City", {
                get: function () {
                    return this.city;
                },
                set: function (city) {
                    this.city = city;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Location.prototype, "State", {
                get: function () {
                    return this.state;
                },
                set: function (state) {
                    this.state = state;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Location.prototype, "Country", {
                get: function () {
                    return this.country;
                },
                set: function (country) {
                    this.country = country;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Location.prototype, "RosterId", {
                get: function () {
                    return this.rosterId;
                },
                set: function (rosterId) {
                    this.rosterId = rosterId;
                },
                enumerable: true,
                configurable: true
            });
            return Location;
        }());
        Entity.Location = Location;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Location.js.map