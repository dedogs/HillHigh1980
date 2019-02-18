module GScope {
    export module Page {
        export class DetailsView {
            private static instance: DetailsView;
            private manager: Module.EventManager;
            private _service: ApplicationService.Service.RosterService;
            private _locationId: number = 0;
            private _currentAction: DetailsView.Action;
            private mapped: any;

            private constructor() {
                this.manager = new Module.EventManager(this);
                this._service = new ApplicationService.Service.RosterService(new Infrastructure.RosterRepository());

                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: DetailsView.ElementIds.City, value: DetailsView.ElementIds.City },
                        { key: DetailsView.ElementIds.State, value: DetailsView.ElementIds.State },
                        { key: DetailsView.ElementIds.PostLoctaion, value: DetailsView.ElementIds.PostLoctaion },
                        { key: DetailsView.ElementIds.DetailsLocations, value: DetailsView.ElementIds.DetailsLocations },
                        { key: DetailsView.ElementIds.DetailsFormTitle, value: DetailsView.ElementIds.DetailsFormTitle },
                        { key: DetailsView.ElementIds.RosterId, value: DetailsView.ElementIds.RosterId },
                        { key: DetailsView.ElementIds.DetailsForm, value: DetailsView.ElementIds.DetailsForm },
                        { key: DetailsView.ElementIds.CloseUpdateForm, value: DetailsView.ElementIds.CloseUpdateForm}
                    ])
                })();

                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.PostLoctaion], "click")]);
                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.DetailsLocations], "click")]);
                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.CloseUpdateForm], "click")]);
                this.manager.attach();

                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
            }

            static getInstance() {
                if (!DetailsView.instance) {
                    DetailsView.instance = new DetailsView();
                }

                return DetailsView.instance;
            }

            detailsLocations = (e: Event) => {
                var target = (<HTMLElement>e.target),
                    parent,
                    cityState: string[] = ["",""];

                this.mapped["$" + DetailsView.ElementIds.DetailsForm].show();

                if (target.className.lastIndexOf("Add") !== -1) {
                    this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = "Add Location";
                    this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Add;
                    this._currentAction = DetailsView.Action.add;

                    this._locationId = 0;
                } else {
                    parent = $(target).parent().get(0);
                    cityState = parent.getAttribute("data-cityState").split(',')
                    this._locationId = parseInt(parent.id);

                    if (target.className.lastIndexOf("Edit") !== -1) {
                        this._currentAction = DetailsView.Action.edit;
                        this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = "Edit Location";
                        this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Edit;
                    } else if (target.className.lastIndexOf("Remove") !== -1) {
                        this._currentAction = DetailsView.Action.remove;
                        this.mapped[DetailsView.ElementIds.PostLoctaion].innerHTML = "Remove Location";
                        this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Remove;
                    }
                }

                this.mapped[DetailsView.ElementIds.City].value = cityState[0];
                this.mapped[DetailsView.ElementIds.State].value = cityState[1];
            };

            closeUpdateForm = (e: Event) => {
                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
            }
            postLoctaion = (e: Event) => {
                var location: Entity.Location = new Entity.Location();

                location.LocationId = this._locationId;
                location.City = this.mapped[DetailsView.ElementIds.City].value;
                location.State = this.mapped[DetailsView.ElementIds.State].value;
                location.RosterId = this.mapped[DetailsView.ElementIds.RosterId].getAttribute("data-rosterId");

                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();

                if (this._currentAction === DetailsView.Action.add) {
                    this._service.CreateRosterLocations([location]).then((html) => {
                        this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
                    }).catch((e) => { });
                } else if (this._currentAction === DetailsView.Action.remove) {
                    this._service.DeleteRosterLocation(location).then((html) => {
                        this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
                    }).catch((e) => { });
                } else {
                    this._service.UpdateRosterLocation(location).then((html) => {
                        this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
                    }).catch((e) => { });
                }
            };
        }

        export module DetailsView {
            export enum ElementIds {
                City = "rosterCity",
                State = "rosterState",
                PostLoctaion = "postLoctaion",
                DetailsLocations = "detailsLocations",
                DetailsFormTitle = "detailsFormTitle",
                RosterId = "rosterId",
                DetailsForm = "detailsForm",
                CloseUpdateForm ="closeUpdateForm"
            }
            export enum Action {
                add,
                remove,
                edit
            }
            export enum FormMessages {
                Add = "Add Current and past places lived",
                Remove = "Remove Roster's Location",
                Edit = "Edit Roster's Location"
            }
        }
    }
}

GScope.Page.DetailsView.getInstance()