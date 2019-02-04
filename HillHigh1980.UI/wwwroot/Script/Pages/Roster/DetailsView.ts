module GScope {
    export module Page {
        export class DetailsView {
            private static instance: DetailsView;
            private manager: Module.EventManager;
            private _service: ApplicationService.Service.RosterService;

            private mapped: any;

            private constructor() {
                const { City, State, NewLocation, Locations, RosterId } = DetailsView.ElementIds;

                this.manager = new Module.EventManager(this);
                this._service = new ApplicationService.Service.RosterService(new Infrastructure.RosterRepository());

                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: City, value: City },
                        { key: State, value: State },
                        { key: NewLocation, value: NewLocation },
                        { key: Locations, value: Locations },
                        { key: RosterId, value: RosterId }
                    ])
                })();

                this.manager.add([new Module.EventManager.EventAction(NewLocation, this.mapped[NewLocation], "click")]);
                this.manager.add([new Module.EventManager.EventAction(NewLocation, this.mapped[Locations], "click")]);
                this.manager.attach();
            }

            static getInstance() {
                if (!DetailsView.instance) {
                    DetailsView.instance = new DetailsView();
                }

                return DetailsView.instance;
            }

            detailsLocations = (e: Event) => {
                alert((<HTMLDivElement>e.target).id);
            };

            postNewLocation = (e: Event) => {
                const { City, State, NewLocation, Locations, RosterId } = DetailsView.ElementIds;

                var location: Entity.Location = new Entity.Location();

                location.City(this.mapped[City].value);
                location.State(this.mapped[State].value);
                location.RosterId(this.mapped[RosterId].getAttribute("data-id"));

                this._service.CreateRosterLocations([location]);
            };
        }

        export module DetailsView {
            export enum ElementIds {
                City = "rosterCity",
                State = "rosterState",
                NewLocation = "postNewLocation",
                Locations = "detailsLocations",
                RosterId = "rosterId"
            }
        }
    }
}

GScope.Page.DetailsView.getInstance()