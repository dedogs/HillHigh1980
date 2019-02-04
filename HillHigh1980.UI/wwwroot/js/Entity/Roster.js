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