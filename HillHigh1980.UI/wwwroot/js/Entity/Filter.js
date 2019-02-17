var GScope;
(function (GScope) {
    var Entity;
    (function (Entity) {
        var Filter = /** @class */ (function () {
            function Filter(searchBy, sortBy) {
                this.sortBy = sortBy;
                this.searchBy = searchBy;
            }
            Object.defineProperty(Filter.prototype, "SortBy", {
                get: function () {
                    return this.sortBy;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Filter.prototype, "SearchBy", {
                get: function () {
                    return this.searchBy;
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