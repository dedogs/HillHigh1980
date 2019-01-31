var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var DetailsView = /** @class */ (function () {
            function DetailsView() {
                this.postLocation = function (e) {
                    alert("clicked");
                };
                var _a = DetailsView.ElementIds, City = _a.City, State = _a.State, RosterForm = _a.RosterForm;
                this.manager = new GScope.Module.EventManager(this);
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: City, value: City },
                        { key: State, value: State },
                        { key: RosterForm, value: RosterForm }
                    ]);
                })();
                this.manager.add([new GScope.Module.EventManager.EventAction(RosterForm, this.mapped[RosterForm], "click")]);
                this.manager.attach();
            }
            DetailsView.getInstance = function () {
                if (!DetailsView.instance) {
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
            })(ElementIds = DetailsView.ElementIds || (DetailsView.ElementIds = {}));
        })(DetailsView = Page.DetailsView || (Page.DetailsView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=DetailsView.js.map