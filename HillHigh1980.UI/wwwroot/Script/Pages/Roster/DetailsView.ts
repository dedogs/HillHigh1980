module GScope {
    export module Page {
        export class DetailsView {
            private static instance: DetailsView;
            private manager: Module.EventManager;
            private _service: ApplicationService.Service.RosterService;
            private _locationId: number = 0;
            private mapped: any;

            private constructor() {
                this.manager = new Module.EventManager(this);
                this._service = new ApplicationService.Service.RosterService(new Infrastructure.RosterRepository());

                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: DetailsView.ElementIds.City, value: DetailsView.ElementIds.City },
                        { key: DetailsView.ElementIds.State, value: DetailsView.ElementIds.State },
                        { key: DetailsView.ElementIds.PostLoctaion, value: DetailsView.ElementIds.PostLoctaion },
                        { key: DetailsView.ElementIds.Locations, value: DetailsView.ElementIds.Locations },
                        { key: DetailsView.ElementIds.RosterId, value: DetailsView.ElementIds.RosterId },
                        { key: DetailsView.ElementIds.AddUpdateForm, value: DetailsView.ElementIds.AddUpdateForm }
                    ])
                })();

                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.PostLoctaion], "click")]);
                this.manager.add([new Module.EventManager.EventAction(DetailsView.ElementIds.PostLoctaion, this.mapped[DetailsView.ElementIds.Locations], "click")]);
                this.manager.attach();

                this.mapped["$" + DetailsView.ElementIds.AddUpdateForm].hide();
            }

            static getInstance() {
                if (!DetailsView.instance) {
                    DetailsView.instance = new DetailsView();
                }

                return DetailsView.instance;
            }

            detailsLocations = (e: Event) => {
                var target = (<HTMLElement>e.target),
                    isAdd: boolean = target.className.lastIndexOf("Add") !== -1,
                    isEdit: boolean = target.className.lastIndexOf("Edit") !== -1,
                    parent = $(target).parent().get(0),
                    cityState: string[] = parent.getAttribute("data-cityState").split(',');

                if (isAdd || isEdit) {
                    this.mapped["$" + DetailsView.ElementIds.AddUpdateForm].show();
                    if (isEdit) {
                        this._locationId = parseInt(parent.id);

                        this.mapped[DetailsView.ElementIds.City].value = cityState[0];
                        this.mapped[DetailsView.ElementIds.State].value = cityState[1];
                    } else {
                        this._locationId = 0;
                    }
                }
            };

            postLoctaion = (e: Event) => {
                var location: Entity.Location = new Entity.Location();

                location.LocationId(this._locationId);
                location.City(this.mapped[DetailsView.ElementIds.City].value);
                location.State(this.mapped[DetailsView.ElementIds.State].value);
                location.RosterId(this.mapped[DetailsView.ElementIds.RosterId].getAttribute("data-rosterId"));

                this.mapped["$" + DetailsView.ElementIds.AddUpdateForm].hide();

                if (this._locationId === 0) {
                    this._service.CreateRosterLocations([location]).then((data) => {
                    }).catch((e) => { });
                } else {
                    this._service.([location]).then((data) => {
                    }).catch((e) => { });
                }

            };
        }

        export module DetailsView {
            export enum ElementIds {
                City = "rosterCity",
                State = "rosterState",
                PostLoctaion = "postLoctaion",
                Locations = "detailsLocations",
                RosterId = "rosterId",
                AddUpdateForm = "addUpdateForm"
            }
        }
    }
}

GScope.Page.DetailsView.getInstance()