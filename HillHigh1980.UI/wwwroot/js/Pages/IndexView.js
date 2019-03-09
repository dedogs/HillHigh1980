var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var IndexView = /** @class */ (function () {
            function IndexView() {
                var _this = this;
                this.setFilterValues = function () {
                    _this.mapped[IndexView.ElementIds.SortBy].selectedIndex = _this.filter.Values.SortBy;
                    _this.mapped[IndexView.ElementIds.SearchBy].selectedIndex = _this.filter.Values.SearchBy;
                    _this.mapped[IndexView.ElementIds.RosterSearch].value = _this.filter.Values.Value;
                };
                this.getFilterValues = function () {
                    var sortBy = _this.mapped[IndexView.ElementIds.SortBy].value, searchBy = _this.mapped[IndexView.ElementIds.SearchBy].value;
                    _this.filter.SearchBy = searchBy === "searchFirst" ? GScope.Entity.Filter.Name.FirstName : GScope.Entity.Filter.Name.LastName;
                    _this.filter.SortBy = sortBy === "sortFirst" ? GScope.Entity.Filter.Name.FirstName : GScope.Entity.Filter.Name.LastName;
                    _this.filter.Value = _this.mapped[IndexView.ElementIds.RosterSearch].value;
                    _this.filter.storeFilterValues();
                };
                this.clearText = function (e) {
                    if (_this.mapped[IndexView.ElementIds.RosterSearch].value !== "") {
                        _this.mapped[IndexView.ElementIds.RosterSearch].value = "";
                        _this.submitSearch(e);
                    }
                };
                this.sortBy = function (e) {
                    _this.submitSearch(e);
                };
                this.submitSearch = function (e) {
                    _this.getFilterValues();
                    _this._service.FindRostersByName(_this.filter.Values).then(function (html) {
                        _this.mapped[IndexView.ElementIds.ShowRoster].innerHTML = html;
                    }).catch(function (e) { });
                };
                this.filter = new GScope.Entity.Filter(); //Sets default values;
                this._service = new GScope.ApplicationService.Service.RosterService(new GScope.Infrastructure.RosterRepository());
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: IndexView.ElementIds.RosterSearch, value: IndexView.ElementIds.RosterSearch },
                        { key: IndexView.ElementIds.SearchBy, value: IndexView.ElementIds.SearchBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SubmitSearch, value: IndexView.ElementIds.SubmitSearch },
                        { key: IndexView.ElementIds.ShowRoster, value: IndexView.ElementIds.ShowRoster },
                        { key: IndexView.ElementIds.ClearText, value: IndexView.ElementIds.ClearText }
                    ]);
                })();
                this.eventActions = [
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.SubmitSearch, this.mapped[IndexView.ElementIds.SubmitSearch], "click"),
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.SortBy, this.mapped[IndexView.ElementIds.SortBy], "change"),
                    new GScope.Module.EventManager.EventAction(IndexView.ElementIds.ClearText, this.mapped[IndexView.ElementIds.ClearText], ["click"])
                ];
                this.manager = new GScope.Module.EventManager(this);
                this.manager.attach();
                this.setFilterValues();
                this.mapped[IndexView.ElementIds.SubmitSearch].click();
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
                ElementIds["ClearText"] = "clearText";
            })(ElementIds = IndexView.ElementIds || (IndexView.ElementIds = {}));
        })(IndexView = Page.IndexView || (Page.IndexView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.IndexView.getInstance();
//# sourceMappingURL=IndexView.js.map