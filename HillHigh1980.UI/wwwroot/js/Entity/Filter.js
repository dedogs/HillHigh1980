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