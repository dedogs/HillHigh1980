var GScope;
(function (GScope) {
    var Page;
    (function (Page) {
        var DetailsView = /** @class */ (function () {
            function DetailsView() {
                var _this = this;
                this._locationId = 0;
                this.detailsLocations = function (e) {
                    var target = e.target, parent, cityState = ["", ""], expected = (["Add", "Edit", "Remove"].filter(function (item) { return target.className.lastIndexOf(item) !== -1; }))[0];
                    if (GScope.Utility.is(expected).undef().ok()) {
                        return;
                    }
                    _this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = expected + " Location >>";
                    _this.mapped["$" + DetailsView.ElementIds.DetailsForm].show();
                    if (expected === "Add") {
                        _this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Add;
                        _this._currentAction = DetailsView.Action.add;
                        _this._locationId = 0;
                    }
                    else {
                        parent = $(target).parent().get(0);
                        cityState = parent.getAttribute("data-cityState").split(',');
                        _this._locationId = parseInt(parent.id);
                        if (expected === "Edit") {
                            _this._currentAction = DetailsView.Action.edit;
                            _this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Edit;
                        }
                        else if (expected === "Remove") {
                            _this._currentAction = DetailsView.Action.remove;
                            _this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Remove;
                        }
                    }
                    _this.mapped[DetailsView.ElementIds.City].value = cityState[0];
                    _this.mapped[DetailsView.ElementIds.State].value = cityState[1];
                };
                this.closeUpdateForm = function (e) {
                    _this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
                };
                this.postLoctaion = function (e) {
                    var location = new GScope.Entity.Location();
                    location.LocationId = _this._locationId;
                    location.City = _this.mapped[DetailsView.ElementIds.City].value;
                    location.State = _this.mapped[DetailsView.ElementIds.State].value;
                    location.RosterId = _this.mapped[DetailsView.ElementIds.RosterId].getAttribute("data-rosterId");
                    _this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
                    if (_this._currentAction === DetailsView.Action.add) {
                        _this._service.CreateRosterLocations([location]).then(function (html) {
                            _this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
                        }).catch(function (e) { });
                    }
                    else if (_this._currentAction === DetailsView.Action.remove) {
                        _this._service.DeleteRosterLocation(location).then(function (html) {
                            _this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
                        }).catch(function (e) { });
                    }
                    else {
                        _this._service.UpdateRosterLocation(location).then(function (html) {
                            _this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
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
                        { key: DetailsView.ElementIds.DetailsLocations, value: DetailsView.ElementIds.DetailsLocations },
                        { key: DetailsView.ElementIds.DetailsFormTitle, value: DetailsView.ElementIds.DetailsFormTitle },
                        { key: DetailsView.ElementIds.RosterId, value: DetailsView.ElementIds.RosterId },
                        { key: DetailsView.ElementIds.DetailsForm, value: DetailsView.ElementIds.DetailsForm },
                        { key: DetailsView.ElementIds.CloseUpdateForm, value: DetailsView.ElementIds.CloseUpdateForm }
                    ]);
                })();
                this.manager.add([new GScope.Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.PostLoctaion], "click")]);
                this.manager.add([new GScope.Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.DetailsLocations], "click")]);
                this.manager.add([new GScope.Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.CloseUpdateForm], "click")]);
                this.manager.attach();
                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
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
                ElementIds["DetailsLocations"] = "detailsLocations";
                ElementIds["DetailsFormTitle"] = "detailsFormTitle";
                ElementIds["RosterId"] = "rosterId";
                ElementIds["DetailsForm"] = "detailsForm";
                ElementIds["CloseUpdateForm"] = "closeUpdateForm";
            })(ElementIds = DetailsView.ElementIds || (DetailsView.ElementIds = {}));
            var Action;
            (function (Action) {
                Action[Action["add"] = 0] = "add";
                Action[Action["remove"] = 1] = "remove";
                Action[Action["edit"] = 2] = "edit";
            })(Action = DetailsView.Action || (DetailsView.Action = {}));
            var FormMessages;
            (function (FormMessages) {
                FormMessages["Add"] = "Add Current and past places lived";
                FormMessages["Remove"] = "Remove Roster's Location";
                FormMessages["Edit"] = "Edit Roster's Location";
            })(FormMessages = DetailsView.FormMessages || (DetailsView.FormMessages = {}));
        })(DetailsView = Page.DetailsView || (Page.DetailsView = {}));
    })(Page = GScope.Page || (GScope.Page = {}));
})(GScope || (GScope = {}));
GScope.Page.DetailsView.getInstance();
//# sourceMappingURL=DetailsView.js.map