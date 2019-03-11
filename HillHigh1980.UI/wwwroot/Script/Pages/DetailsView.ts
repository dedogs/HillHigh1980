module GScope {
    export module Page {
        export class DetailsView {
            private static instance: DetailsView;
            private manager: Module.EventManager;
            private _service: ApplicationService.Service.RosterService;
            private _locationId: number = 0;
            private _currentAction: DetailsView.Action;
            private mapped: any;
            private antiforgery: Infrastructure.Antiforgery;

            private constructor() {
                this.manager = new Module.EventManager(this);
                this._service = new ApplicationService.Service.RosterService(new Infrastructure.RosterRepository());

                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: DetailsView.ElementIds.City, value: DetailsView.ElementIds.City },
                        { key: DetailsView.ElementIds.State, value: DetailsView.ElementIds.State },
                        { key: DetailsView.ElementIds.Country, value: DetailsView.ElementIds.Country },
                        { key: DetailsView.ElementIds.SubmitLocation, value: DetailsView.ElementIds.SubmitLocation },
                        { key: DetailsView.ElementIds.DetailsLocations, value: DetailsView.ElementIds.DetailsLocations },
                        { key: DetailsView.ElementIds.DetailsFormTitle, value: DetailsView.ElementIds.DetailsFormTitle },
                        { key: DetailsView.ElementIds.RosterId, value: DetailsView.ElementIds.RosterId },
                        { key: DetailsView.ElementIds.DetailsForm, value: DetailsView.ElementIds.DetailsForm },
                        { key: DetailsView.ElementIds.CloseUpdateForm, value: DetailsView.ElementIds.CloseUpdateForm },
                        { key: DetailsView.ElementIds.RosterCityStaticName, value: DetailsView.ElementIds.RosterCityStaticName },
                        { key: DetailsView.ElementIds.RosterStateStaticName, value: DetailsView.ElementIds.RosterStateStaticName },
                        { key: DetailsView.ElementIds.RosterCountryStaticName, value: DetailsView.ElementIds.RosterCountryStaticName }
                    ])
                })();

                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.SubmitLocation, this.mapped[DetailsView.ElementIds.SubmitLocation], "click")]);
                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.SubmitLocation, this.mapped[DetailsView.ElementIds.DetailsLocations], "click")]);
                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.SubmitLocation, this.mapped[DetailsView.ElementIds.CloseUpdateForm], "click")]);
                this.manager.attach();

                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
            }

            static getInstance() {
                if (!DetailsView.instance) {
                    DetailsView.instance = new DetailsView();
                }

                return DetailsView.instance;
            }

            showFields = () => {

                this.mapped["$" + DetailsView.ElementIds.City].show();
                this.mapped["$" + DetailsView.ElementIds.State].show();
                this.mapped["$" + DetailsView.ElementIds.Country].show();

                this.mapped["$" + DetailsView.ElementIds.RosterCityStaticName].hide();
                this.mapped["$" + DetailsView.ElementIds.RosterStateStaticName].hide();
                this.mapped["$" + DetailsView.ElementIds.RosterCountryStaticName].hide();

            }

            hideFields = () => {
                this.mapped["$" + DetailsView.ElementIds.City].hide();
                this.mapped["$" + DetailsView.ElementIds.State].hide();
                this.mapped["$" + DetailsView.ElementIds.Country].hide();

                this.mapped["$" + DetailsView.ElementIds.RosterCityStaticName].show();
                this.mapped["$" + DetailsView.ElementIds.RosterStateStaticName].show();
                this.mapped["$" + DetailsView.ElementIds.RosterCountryStaticName].show();
            }

            setValue = (fields: string[]) => {
                this.mapped[DetailsView.ElementIds.City].value = fields[0];
                this.mapped[DetailsView.ElementIds.State].value = fields[1];
                this.mapped[DetailsView.ElementIds.Country].value = fields[2];
            }
            appendHTML = (fields: string[]) => {
                this.mapped[DetailsView.ElementIds.RosterCityStaticName].innerHTML = fields[0];
                this.mapped[DetailsView.ElementIds.RosterStateStaticName].innerHTML = fields[1];
                this.mapped[DetailsView.ElementIds.RosterCountryStaticName].innerHTML = fields[2];
            }

            detailsLocations = (e: Event) => {
                var target = (<HTMLElement>e.target),
                    parent,
                    cityState: string[] = ["", "", "United States"],
                    expected: string = (["Add", "Edit", "Remove"].filter(item => target.className.lastIndexOf(item) !== -1))[0];

                if (Utility.is(expected).undef().ok()) {
                    return;
                }

                this.mapped["$" + DetailsView.ElementIds.DetailsForm].show();
                this.mapped["$" + DetailsView.ElementIds.SubmitLocation].removeClass("btn-outline-danger btn-outline-dark").html(expected + " Location >>");
                this.mapped["$" + DetailsView.ElementIds.DetailsFormTitle].removeClass("text-danger").show();

                if (expected === "Add") {
                    this.showFields();

                    this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Add;
                    this._currentAction = DetailsView.Action.add;

                    this._locationId = 0;

                    this.setValue(cityState);
                } else {

                    parent = $(target).parent().get(0);
                    cityState = parent.getAttribute("data-cityState").split(',')
                    this._locationId = parseInt(parent.id);

                    if (expected === "Edit") {
                        this.showFields();

                        this._currentAction = DetailsView.Action.edit;
                        this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Edit;
                        this.setValue(cityState);

                    } else if (expected === "Remove") {
                        this.mapped["$" + DetailsView.ElementIds.SubmitLocation].addClass("btn-outline-danger");

                        this.hideFields();

                        this._currentAction = DetailsView.Action.remove;
                        this.mapped["$" + DetailsView.ElementIds.DetailsFormTitle].addClass("text-danger");
                        this.mapped[DetailsView.ElementIds.DetailsFormTitle].innerHTML = DetailsView.FormMessages.Remove;

                        this.appendHTML(cityState);
                    }
                }

            };

            closeUpdateForm = (e: Event) => {
                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();
            }
            submitLocation = (e: Event) => {
                var location: Entity.Location = new Entity.Location();

                location.LocationId = this._locationId;
                location.City = this.mapped[DetailsView.ElementIds.City].value;
                location.State = this.mapped[DetailsView.ElementIds.State].value;
                location.Country = this.mapped[DetailsView.ElementIds.Country].value;
                location.RosterId = this.mapped[DetailsView.ElementIds.RosterId].getAttribute("data-rosterId");

                this.mapped["$" + DetailsView.ElementIds.DetailsForm].hide();

                if (this._currentAction === DetailsView.Action.add) {
                    this._service.CreateRosterLocations([location]).then((html) => {
                        this.mapped[DetailsView.ElementIds.DetailsLocations].innerHTML = html;
                    }).catch((e: any) => { console.error(e.statusText + " >> " + e.responseText) });
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
                Country = "rosterCountry",
                SubmitLocation = "submitLocation",
                DetailsLocations = "detailsLocations",
                DetailsFormTitle = "detailsFormTitle",
                RosterId = "rosterId",
                DetailsForm = "detailsForm",
                CloseUpdateForm = "closeUpdateForm",
                RosterCityStaticName = "rosterCityStaticName",
                RosterStateStaticName = "rosterStateStaticName",
                RosterCountryStaticName = "rosterCountryStaticName"
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