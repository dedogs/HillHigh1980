﻿module GScope {
    export module Page {
        export class DetailsView {
            private static instance: DetailsView;
            private manager: Module.EventManager;

            private mapped: any;

            private constructor() {
                const { City, State, RosterForm, Locations } = DetailsView.ElementIds;

                this.manager = new Module.EventManager(this);

                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: City, value: City },
                        { key: State, value: State },
                        { key: RosterForm, value: RosterForm },
                        { key: Locations, value: Locations }
                    ])
                })();

                this.manager.add([new Module.EventManager.EventAction(RosterForm, this.mapped[RosterForm], "click")]);
                this.manager.add([new Module.EventManager.EventAction(RosterForm, this.mapped[Locations], "click")]);
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

            postLocation = (e: Event) => {
                alert("clicked");
            };
        }

        export module DetailsView {
            export enum ElementIds {
                City = "rosterCity",
                State = "rosterState",
                RosterForm = "postLocation",
                Locations = "detailsLocations"
            }
        }
    }
}

GScope.Page.DetailsView.getInstance()