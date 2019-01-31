var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var DetailsView = /** @class */ (function () {
            function DetailsView() {
                this.detailsLocations = function (e) {
                    alert(e.target.id);
                };
                this.postLocation = function (e) {
                    alert("clicked");
                };
                var _a = DetailsView.ElementIds, City = _a.City, State = _a.State, RosterForm = _a.RosterForm, Locations = _a.Locations;
                this.manager = new GScope.Module.EventManager(this);
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: City, value: City },
                        { key: State, value: State },
                        { key: RosterForm, value: RosterForm },
                        { key: Locations, value: Locations }
                    ]);
                })();
                this.manager.add([new GScope.Module.EventManager.EventAction(RosterForm, this.mapped[RosterForm], "click")]);
                this.manager.add([new GScope.Module.EventManager.EventAction(RosterForm, this.mapped[Locations], "click")]);
                this.manager.attach();
            }
            DetailsView.getInstance = function () {
                if (!DetailsView.instance) {
                    DetailsView.instance = new DetailsView();
                }
                return DetailsView.instance;
            };
            return DetailsView;
        }());
        Page.DetailsView = DetailsView;
        (function (DetailsView) {
            var ElementIds;
            (function (ElementIds) {
                ElementIds["City"] = "rosterCity";
                ElementIds["State"] = "rosterState";
                ElementIds["RosterForm"] = "postLocation";
                ElementIds["Locations"] = "detailsLocations";
            })(ElementIds = DetailsView.ElementIds || (DetailsView.ElementIds = {}));
        })(DetailsView = Page.DetailsView || (Page.DetailsView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.DetailsView.getInstance();
//# sourceMappingURL=DetailsView.js.map