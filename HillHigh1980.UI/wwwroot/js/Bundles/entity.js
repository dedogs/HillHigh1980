var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Filter = /** @class */ (function () {
            function Filter() {
                this.sortBy = Filter.Name.LastName;
                this.searchBy = Filter.Name.LastName;
                this.value = "";
            }
            Object.defineProperty(Filter.prototype, "SortBy", {
                get: function () {
                    return this.sortBy;
                },
                set: function (sortBy) {
                    this.sortBy = sortBy;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Filter.prototype, "SearchBy", {
                get: function () {
                    return this.searchBy;
                },
                set: function (searchBy) {
                    this.searchBy = searchBy;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Filter.prototype, "Value", {
                get: function () {
                    return this.value;
                },
                set: function (value) {
                    this.value = value;
                },
                enumerable: true,
                configurable: true
            });
            Filter.prototype.storeFilterValues = function () {
                sessionStorage.setItem("fv", JSON.stringify({ "sortBy": this.SortBy, "searchBy": this.SearchBy, "value": this.Value }));
            };
            Object.defineProperty(Filter.prototype, "Values", {
                get: function () {
                    var filter = new Filter(), fv;
                    if (!sessionStorage.getItem("fv")) {
                        sessionStorage.setItem("fv", JSON.stringify({ "sortBy": this.SortBy, "searchBy": this.SearchBy, "value": this.Value }));
                    }
                    fv = JSON.parse(sessionStorage.getItem("fv"));
                    filter.SortBy = fv.sortBy;
                    filter.SearchBy = fv.searchBy;
                    filter.Value = fv.value;
                    return filter;
                },
                enumerable: true,
                configurable: true
            });
            return Filter;
        }());
        Entity.Filter = Filter;
        (function (Filter) {
            var Name;
            (function (Name) {
                Name[Name["FirstName"] = 0] = "FirstName";
                Name[Name["LastName"] = 1] = "LastName";
            })(Name = Filter.Name || (Filter.Name = {}));
        })(Filter = Entity.Filter || (Entity.Filter = {}));
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Filter.js.map
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
            Object.defineProperty(Location.prototype, "Latitude", {
                get: function () {
                    return this.latitude;
                },
                set: function (latitude) {
                    this.latitude = latitude;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Location.prototype, "Longitude", {
                get: function () {
                    return this.longitude;
                },
                set: function (longitude) {
                    this.longitude = longitude;
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