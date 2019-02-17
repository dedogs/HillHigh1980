var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var IndexView = /** @class */ (function () {
            function IndexView() {
                var _this = this;
                this.filter = function () {
                    var sortBy = _this.mapped[IndexView.ElementIds.SortBy].value, searchBy = _this.mapped[IndexView.ElementIds.SearchBy].value, oFilter = new GScope.Entity.Filter(searchBy === "searchFirst" ? GScope.Entity.Filter.Name.FirstName : GScope.Entity.Filter.Name.LastName, sortBy === "sortFirst" ? GScope.Entity.Filter.Name.FirstName : GScope.Entity.Filter.Name.LastName);
                    oFilter.Value = _this.mapped[IndexView.ElementIds.RosterSearch].value;
                    return oFilter;
                };
                this.submitSearch = function (e) {
                    var filter = _this.filter();
                    alert("do search");
                    _this._service.FindRostersByName(filter).then(function (html) {
                        alert("done");
                        _this.mapped[IndexView.ElementIds.ShowRoster].innerHTML = html;
                    }).catch(function (e) { });
                };
                this._service = new GScope.ApplicationService.Service.RosterService(new GScope.Infrastructure.RosterRepository());
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: IndexView.ElementIds.RosterSearch, value: IndexView.ElementIds.RosterSearch },
                        { key: IndexView.ElementIds.SearchBy, value: IndexView.ElementIds.SearchBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SubmitSearch, value: IndexView.ElementIds.SubmitSearch },
                        { key: IndexView.ElementIds.ShowRoster, value: IndexView.ElementIds.ShowRoster }
                    ]);
                })();
                var events = [
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
                ElementIds["SearchBy"] = "searchBy";
                ElementIds["SortBy"] = "sortBy";
                ElementIds["RosterSearch"] = "rosterSearch";
                ElementIds["SubmitSearch"] = "submitSearch";
                ElementIds["ShowRoster"] = "showRoster";
            })(ElementIds = IndexView.ElementIds || (IndexView.ElementIds = {}));
        })(IndexView = Page.IndexView || (Page.IndexView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.IndexView.getInstance();
//# sourceMappingURL=IndexView.js.map