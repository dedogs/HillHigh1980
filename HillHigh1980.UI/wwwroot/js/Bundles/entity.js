var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Location = /** @class */ (function () {
            function Location() {
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
var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Roster = /** @class */ (function () {
            function Roster() {
            }
            Object.defineProperty(Roster.prototype, "RosterId", {
                get: function () {
                    return this.rosterId;
                },
                set: function (rosterId) {
                    this.rosterId = rosterId;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "FirstName", {
                get: function () {
                    return this.firstName;
                },
                set: function (firstName) {
                    this.firstName = firstName;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "Middle", {
                get: function () {
                    return this.middle;
                },
                set: function (middle) {
                    this.middle = middle;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "LastName", {
                get: function () {
                    return this.lastName;
                },
                set: function (lastName) {
                    this.lastName = lastName;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "Found", {
                get: function () {
                    return this.found;
                },
                set: function (found) {
                    this.found = found;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "Image", {
                get: function () {
                    return this.image;
                },
                set: function (image) {
                    this.image = image;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "Caption", {
                get: function () {
                    return this.caption;
                },
                set: function (caption) {
                    this.caption = caption;
                },
                enumerable: true,
                configurable: true
            });
            ;
            Object.defineProperty(Roster.prototype, "Link", {
                get: function () {
                    return this.link;
                },
                set: function (link) {
                    this.link = link;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "Locations", {
                get: function () {
                    return this.locations;
                },
                set: function (locations) {
                    this.locations.concat(locations);
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Roster.prototype, "Location", {
                set: function (location) {
                    this.locations.push(location);
                },
                enumerable: true,
                configurable: true
            });
            return Roster;
        }());
        Entity.Roster = Roster;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Roster.js.map