var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var DetailsView = /** @class */ (function () {
            function DetailsView() {
                var _this = this;
                this._locationId = 0;
                this.detailsLocations = function (e) {
                    var target = e.target, parent = $(target).parent().get(0), cityState = parent.getAttribute("data-cityState").split(',');
                    _this.mapped["$" + DetailsView.ElementIds.AddUpdateForm].show();
                    _this._locationId = parseInt(parent.id);
                    if (target.className.lastIndexOf("Add") !== -1) {
                        _this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = "Add Location";
                        _this._currentAction = DetailsView.Action.add;
                        cityState[0] = "";
                        cityState[1] = "";
                        _this._locationId = 0;
                    }
                    else if (target.className.lastIndexOf("Edit") !== -1) {
                        _this._currentAction = DetailsView.Action.edit;
                        _this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = "Edit Location";
                    }
                    else if (target.className.lastIndexOf("Remove") !== -1) {
                        _this._currentAction = DetailsView.Action.remove;
                        _this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = "Remove Location";
                        _this._locationId = -1;
                    }
                    _this.mapped[DetailsView.ElementIds.City].value = cityState[0];
                    _this.mapped[DetailsView.ElementIds.State].value = cityState[1];
                };
                this.postLoctaion = function (e) {
                    var location = new GScope.Entity.Location();
                    location.LocationId = _this._locationId;
                    location.City = _this.mapped[DetailsView.ElementIds.City].value;
                    location.State = _this.mapped[DetailsView.ElementIds.State].value;
                    location.RosterId = _this.mapped[DetailsView.ElementIds.RosterId].getAttribute("data-rosterId");
                    _this.mapped["$" + DetailsView.ElementIds.AddUpdateForm].hide();
                    if (_this._currentAction === DetailsView.Action.add) {
                        _this._service.CreateRosterLocations([location]).then(function (data) {
                        }).catch(function (e) { });
                    }
                    else if (_this._currentAction === DetailsView.Action.remove) {
                        _this._service.DeleteRosterLocation(location).then(function (data) {
                        }).catch(function (e) { });
                    }
                    else {
                        _this._service.UpdateRosterLocation(location).then(function (data) {
                        }).catch(function (e) { });
                    }
                };
                this.manager = new GScope.Module.EventManager(this);
                this._service = new GScope.ApplicationService.Service.RosterService(new GScope.Infrastructure.RosterRepository());
                this.mapped = (function () {
                    return GScope.Module.MappedIds.get([
                        { key: DetailsView.ElementIds.City, value: DetailsView.ElementIds.City },
                        { key: DetailsView.ElementIds.State, value: DetailsView.ElementIds.State },
                        { key: DetailsView.ElementIds.PostLoctaion, value: DetailsView.ElementIds.PostLoctaion },
                        { key: DetailsView.ElementIds.Locations, value: DetailsView.ElementIds.Locations },
                        { key: DetailsView.ElementIds.RosterId, value: DetailsView.ElementIds.RosterId },
                        { key: DetailsView.ElementIds.AddUpdateForm, value: DetailsView.ElementIds.AddUpdateForm }
                    ]);
                })();
                this.manager.add([new GScope.Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.PostLoctaion], "click")]);
                this.manager.add([new GScope.Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.Locations], "click")]);
                this.manager.attach();
                this.mapped["$" + DetailsView.ElementIds.AddUpdateForm].hide();
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
                ElementIds["PostLoctaion"] = "postLoctaion";
                ElementIds["Locations"] = "detailsLocations";
                ElementIds["RosterId"] = "rosterId";
                ElementIds["AddUpdateForm"] = "addUpdateForm";
            })(ElementIds = DetailsView.ElementIds || (DetailsView.ElementIds = {}));
            var Action;
            (function (Action) {
                Action[Action["add"] = 0] = "add";
                Action[Action["remove"] = 1] = "remove";
                Action[Action["edit"] = 2] = "edit";
            })(Action = DetailsView.Action || (DetailsView.Action = {}));
        })(DetailsView = Page.DetailsView || (Page.DetailsView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.DetailsView.getInstance();
//# sourceMappingURL=DetailsView.js.map