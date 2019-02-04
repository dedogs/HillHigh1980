var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var SeedTypes;
        (function (SeedTypes) {
            SeedTypes[SeedTypes["MicroGreens"] = 0] = "MicroGreens";
            SeedTypes[SeedTypes["Garden"] = 1] = "Garden";
        })(SeedTypes = Entity.SeedTypes || (Entity.SeedTypes = {}));
        var Unit;
        (function (Unit) {
            Unit[Unit["oz"] = 0] = "oz";
            Unit[Unit["lbs"] = 1] = "lbs";
        })(Unit = Entity.Unit || (Entity.Unit = {}));
        var Cost = /** @class */ (function () {
            function Cost() {
            }
            Cost.prototype.CostId = function (costId) {
                if (GScope.Utility.is(costId).str().ok()) {
                    this._costId = costId;
                }
                return this._costId;
            };
            Cost.prototype.Size = function (size) {
                if (GScope.Utility.is(size).num().ok()) {
                    this._size = size;
                }
                return this._size;
            };
            Cost.prototype.Price = function (price) {
                if (GScope.Utility.is(price).num().ok()) {
                    this._price = price;
                }
                return this._price;
            };
            Cost.prototype.Unit = function (unit) {
                if (unit !== null) {
                    this._unit = unit;
                }
                return this._unit;
            };
            return Cost;
        }());
        Entity.Cost = Cost;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Cost.js.map
var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var GrowingInfo = /** @class */ (function () {
            function GrowingInfo() {
            }
            GrowingInfo.prototype.Culture = function (culture) {
                if (GScope.Utility.is(culture).str().ok()) {
                    this._culture = culture;
                }
                return this._culture;
            };
            GrowingInfo.prototype.Watering = function (watering) {
                if (GScope.Utility.is(watering).str().ok()) {
                    this._watering = watering;
                }
                return this._watering;
            };
            GrowingInfo.prototype.Temperature = function (temperature) {
                if (GScope.Utility.is(temperature).str().ok()) {
                    this._temperature = temperature;
                }
                return this._temperature;
            };
            GrowingInfo.prototype.Lighting = function (lighting) {
                if (GScope.Utility.is(lighting).str().ok()) {
                    this._lighting = lighting;
                }
                return this._lighting;
            };
            GrowingInfo.prototype.Fertilizer = function (fertilizer) {
                if (GScope.Utility.is(fertilizer).str().ok()) {
                    this._fertilizer = fertilizer;
                }
                return this._fertilizer;
            };
            GrowingInfo.prototype.Diseases = function (diseases) {
                if (GScope.Utility.is(diseases).str().ok()) {
                    this._diseases = diseases;
                }
                return this._diseases;
            };
            GrowingInfo.prototype.Harvest = function (harvest) {
                if (GScope.Utility.is(harvest).str().ok()) {
                    this._harvest = harvest;
                }
                return this._harvest;
            };
            GrowingInfo.prototype.Storgage = function (storgage) {
                if (GScope.Utility.is(storgage).str().ok()) {
                    this._storgage = storgage;
                }
                return this._storgage;
            };
            return GrowingInfo;
        }());
        Entity.GrowingInfo = GrowingInfo;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=GrowingInfo.js.map
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
var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Roster = /** @class */ (function () {
            function Roster() {
                this.rosterId = 0;
                this.firstName = "";
                this.middle = "";
                this.lastName = "";
                this.found = false;
                this.image = "";
                this.caption = "";
                this.link = "";
                this.locations = [];
            }
            Roster.prototype.RosterId = function (rosterId) {
                if (!GScope.Utility.is(rosterId).nul().ok()) {
                    this.rosterId = rosterId;
                }
                return this.rosterId;
            };
            Roster.prototype.FirstName = function (firstName) {
                if (!GScope.Utility.is(firstName).nul().ok()) {
                    this.firstName = name;
                }
                return this.firstName;
            };
            Roster.prototype.Middle = function (middle) {
                if (!GScope.Utility.is(middle).nul().ok()) {
                    this.middle = middle;
                }
                return this.middle;
            };
            Roster.prototype.LastName = function (lastName) {
                if (!GScope.Utility.is(lastName).nul().ok()) {
                    this.lastName = lastName;
                }
                return this.lastName;
            };
            Roster.prototype.Found = function (found) {
                if (!GScope.Utility.is(found).nul().ok()) {
                    this.found = found;
                }
                return this.found;
            };
            Roster.prototype.Image = function (image) {
                if (!GScope.Utility.is(image).nul().ok()) {
                    this.image = image;
                }
                return this.image;
            };
            Roster.prototype.Caption = function (caption) {
                if (!GScope.Utility.is(caption).nul().ok()) {
                    this.caption = caption;
                }
                return this.caption;
            };
            Roster.prototype.Link = function (link) {
                if (!GScope.Utility.is(link).nul().ok()) {
                    this.link = link;
                }
                return this.link;
            };
            Roster.prototype.Location = function (location, locations) {
                if (!(GScope.Utility.is(locations).nul().ok() || GScope.Utility.is(locations).undef().ok())) {
                    this.locations.concat(locations);
                }
                else if (!(GScope.Utility.is(location).nul().ok() || GScope.Utility.is(location).undef().ok())) {
                    this.locations.push(location);
                }
                return this.locations;
            };
            return Roster;
        }());
        Entity.Roster = Roster;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Roster.js.map