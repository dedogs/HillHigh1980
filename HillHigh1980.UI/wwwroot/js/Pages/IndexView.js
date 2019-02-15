var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var IndexView = /** @class */ (function () {
            function IndexView() {
                var _this = this;
                this.filterBy = function (e) {
                    alert("changed filter");
                };
                this.sortBy = function (e) {
                    alert("changed sort");
                };
                this.submitSearch = function (e) {
                    alert(_this.mapped[IndexView.ElementIds.RosterSearch].value);
                };
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: IndexView.ElementIds.RosterSearch, value: IndexView.ElementIds.RosterSearch },
                        { key: IndexView.ElementIds.FilterBy, value: IndexView.ElementIds.FilterBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SubmitSearch, value: IndexView.ElementIds.SubmitSearch }
                    ]);
                })();
                var events = [
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.FilterBy, this.mapped[IndexView.ElementIds.FilterBy], "change"),
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.SortBy, this.mapped[IndexView.ElementIds.SortBy], "change"),
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.SubmitSearch, this.mapped[IndexView.ElementIds.SubmitSearch], "click")
                ];
                this.manager = new GScope.Module.EventManager(this);
                this.manager.add(events);
                this.manager.attach();
            }
            IndexView.getInstance = function () {
                if (!IndexView.instance) {
                    IndexView.instance = new IndexView();
                }
                return IndexView.instance;
            };
            return IndexView;
        }());
        Page.IndexView = IndexView;
        (function (IndexView) {
            var ElementIds;
            (function (ElementIds) {
                ElementIds["FilterBy"] = "filterBy";
                ElementIds["SortBy"] = "sortBy";
                ElementIds["RosterSearch"] = "rosterSearch";
                ElementIds["SubmitSearch"] = "submitSearch";
            })(ElementIds = IndexView.ElementIds || (IndexView.ElementIds = {}));
            var FilterBy;
            (function (FilterBy) {
                FilterBy["FirstName"] = "First Name";
                FilterBy["LastName"] = "Last Name";
            })(FilterBy = IndexView.FilterBy || (IndexView.FilterBy = {}));
            var SearchBy;
            (function (SearchBy) {
                SearchBy["FirstName"] = "First Name";
                SearchBy["LastName"] = "Last Name";
            })(SearchBy = IndexView.SearchBy || (IndexView.SearchBy = {}));
        })(IndexView = Page.IndexView || (Page.IndexView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.IndexView.getInstance();
//# sourceMappingURL=IndexView.js.map