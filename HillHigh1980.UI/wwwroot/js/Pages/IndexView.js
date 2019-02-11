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
                    _this.mapped[IndexView.ElementIds.SortBySelected].innerHTML = e.target.innerHTML;
                    _this.mapped[IndexView.ElementIds.SortBySelected].click();
                };
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: IndexView.ElementIds.Search, value: IndexView.ElementIds.Search },
                        { key: IndexView.ElementIds.FilterBy, value: IndexView.ElementIds.FilterBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SortBySelected, value: IndexView.ElementIds.SortBySelected }
                    ]);
                })();
                var events = [
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.FilterBy, this.mapped[IndexView.ElementIds.FilterBy], "change"),
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.SortBy, this.mapped[IndexView.ElementIds.SortBy], "click")
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
                ElementIds["Search"] = "rosterSearch";
                ElementIds["FilterBy"] = "filterBy";
                ElementIds["SortBy"] = "sortBy";
                ElementIds["SortBySelected"] = "sortBySelected";
            })(ElementIds = IndexView.ElementIds || (IndexView.ElementIds = {}));
            var FilterBy;
            (function (FilterBy) {
                FilterBy["FirstName"] = "First Name";
                FilterBy["LastName"] = "Last Name";
            })(FilterBy = IndexView.FilterBy || (IndexView.FilterBy = {}));
            var SortBy;
            (function (SortBy) {
                SortBy["FirstName"] = "First Name";
                SortBy["LastName"] = "Last Name";
            })(SortBy = IndexView.SortBy || (IndexView.SortBy = {}));
        })(IndexView = Page.IndexView || (Page.IndexView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.IndexView.getInstance();
//# sourceMappingURL=IndexView.js.map