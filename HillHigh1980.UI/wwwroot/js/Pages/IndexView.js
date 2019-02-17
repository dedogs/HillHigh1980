var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var IndexView = /** @class */ (function () {
            function IndexView() {
                var _this = this;
                this.filter = function (name) {
                    var sortBy = _this.mapped[IndexView.ElementIds.SortBy].value, searchBy = _this.mapped[IndexView.ElementIds.SearchBy].value;
                    return new GScope.Entity.Filter(searchBy === "searchFirst" ? GScope.Entity.Filter.Name.FirstName : GScope.Entity.Filter.Name.LastName, sortBy === "sortFirst" ? GScope.Entity.Filter.Name.FirstName : GScope.Entity.Filter.Name.FirstName);
                };
                this.submitSearch = function (e) {
                    var searchValue = _this.mapped[IndexView.ElementIds.RosterSearch].value, filter = _this.filter(searchValue);
                    _this._service.FindRostersByName(searchValue).then(function (html) {
                        _this.mapped[Page.DetailsView.ElementIds.Locations].innerHTML = html;
                    }).catch(function (e) { });
                };
                this._service = new GScope.ApplicationService.Service.RosterService(new GScope.Infrastructure.RosterRepository());
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: IndexView.ElementIds.RosterSearch, value: IndexView.ElementIds.RosterSearch },
                        { key: IndexView.ElementIds.SearchBy, value: IndexView.ElementIds.SearchBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SubmitSearch, value: IndexView.ElementIds.SubmitSearch }
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
            })(ElementIds = IndexView.ElementIds || (IndexView.ElementIds = {}));
        })(IndexView = Page.IndexView || (Page.IndexView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.IndexView.getInstance();
//# sourceMappingURL=IndexView.js.map