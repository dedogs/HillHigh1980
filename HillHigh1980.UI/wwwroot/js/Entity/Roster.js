var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Roster = /** @class */ (function () {
            function Roster() {
            }
            Roster.prototype.RosterId = function (rosterId) {
                if (!GScope.Utility.is(rosterId).nul().ok()) {
                    this._rosterId = rosterId;
                }
                return this._rosterId;
            };
            Roster.prototype.FirstName = function (firstName) {
                if (!GScope.Utility.is(firstName).nul().ok()) {
                    this._firstName = name;
                }
                return this._firstName;
            };
            Roster.prototype.Middle = function (middle) {
                if (!GScope.Utility.is(middle).nul().ok()) {
                    this._middle = middle;
                }
                return this._middle;
            };
            Roster.prototype.LastName = function (lastName) {
                if (!GScope.Utility.is(lastName).nul().ok()) {
                    this._lastName = lastName;
                }
                return this._lastName;
            };
            Roster.prototype.Found = function (found) {
                if (!GScope.Utility.is(found).nul().ok()) {
                    this._found = found;
                }
                return this._found;
            };
            Roster.prototype.Image = function (image) {
                if (!GScope.Utility.is(image).nul().ok()) {
                    this._image = image;
                }
                return this._image;
            };
            Roster.prototype.Caption = function (caption) {
                if (!GScope.Utility.is(caption).nul().ok()) {
                    this._caption = caption;
                }
                return this._caption;
            };
            Roster.prototype.Link = function (link) {
                if (!GScope.Utility.is(link).nul().ok()) {
                    this._link = link;
                }
                return this._link;
            };
            Roster.prototype.Location = function (location, locations) {
                if (!GScope.Utility.is(locations).nul().ok()) {
                    this._locations.concat(locations);
                }
                else if (!GScope.Utility.is(location).nul().ok()) {
                    this._locations.push(location);
                }
                return this._locations;
            };
            return Roster;
        }());
        Entity.Roster = Roster;
    })(Entity = GScope.Entity || (GScope.Entity = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Roster.js.map