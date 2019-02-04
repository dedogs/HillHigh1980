var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var DetailsView = /** @class */ (function () {
            function DetailsView() {
                var _this = this;
                this.detailsLocations = function (e) {
                    alert(e.target.id);
                };
                this.postNewLocation = function (e) {
                    var _a = DetailsView.ElementIds, City = _a.City, State = _a.State, NewLocation = _a.NewLocation, Locations = _a.Locations, RosterId = _a.RosterId;
                    var roster = new GScope.Entity.Roster();
                    var location = new GScope.Entity.Location();
                    location.City = _this.mapped[City].value;
                    location.State = _this.mapped[State].value;
                    roster.RosterId = _this.mapped[RosterId].getAttribute("data-id");
                    roster.Location(location);
                    _this._service.UpdateRoster(roster);
                };
                var _a = DetailsView.ElementIds, City = _a.City, State = _a.State, NewLocation = _a.NewLocation, Locations = _a.Locations, RosterId = _a.RosterId;
                this.manager = new GScope.Module.EventManager(this);
                this._service = new GScope.ApplicationService.Service.RosterService(new GScope.Infrastructure.RosterRepository());
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: City, value: City },
                        { key: State, value: State },
                        { key: NewLocation, value: NewLocation },
                        { key: Locations, value: Locations },
                        { key: RosterId, value: RosterId }
                    ]);
                })();
                this.manager.add([new GScope.Module.EventManager.EventAction(NewLocation, this.mapped[NewLocation], "click")]);
                this.manager.add([new GScope.Module.EventManager.EventAction(NewLocation, this.mapped[Locations], "click")]);
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
                ElementIds["NewLocation"] = "postNewLocation";
                ElementIds["Locations"] = "detailsLocations";
                ElementIds["RosterId"] = "rosterId";
            })(ElementIds = DetailsView.ElementIds || (DetailsView.ElementIds = {}));
        })(DetailsView = Page.DetailsView || (Page.DetailsView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.DetailsView.getInstance();
//# sourceMappingURL=DetailsView.js.map