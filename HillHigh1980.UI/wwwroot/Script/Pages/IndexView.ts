module GScope {
    export module Page {
        export class IndexView {
            private static instance: IndexView;
            private mapped: any;
            private _service: ApplicationService.Service.RosterService;
            private manager: Module.EventManager;
            private filter: () => Entity.Filter = (): Entity.Filter => {
                var sortBy: string = this.mapped[IndexView.ElementIds.SortBy].value,
                    searchBy: string = this.mapped[IndexView.ElementIds.SearchBy].value,
                    oFilter: Entity.Filter = new Entity.Filter(searchBy === "searchFirst" ? Entity.Filter.Name.FirstName : Entity.Filter.Name.LastName, sortBy === "sortFirst" ? Entity.Filter.Name.FirstName : Entity.Filter.Name.LastName);
                oFilter.Value = this.mapped[IndexView.ElementIds.RosterSearch].value;

                return oFilter;
            };
            eventActions: Module.EventManager.EventAction[];

            private constructor() {
                this._service = new ApplicationService.Service.RosterService(new Infrastructure.RosterRepository());

                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: IndexView.ElementIds.RosterSearch, value: IndexView.ElementIds.RosterSearch },
                        { key: IndexView.ElementIds.SearchBy, value: IndexView.ElementIds.SearchBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SubmitSearch, value: IndexView.ElementIds.SubmitSearch },
                        { key: IndexView.ElementIds.ShowRoster, value: IndexView.ElementIds.ShowRoster },
                        { key: IndexView.ElementIds.ClearText, value: IndexView.ElementIds.ClearText }
                    ])
                })();

                this.eventActions = [
                    new Module.EventManager.EventAction(IndexView.ElementIds.SubmitSearch, this.mapped[IndexView.ElementIds.SubmitSearch], "click"),
                    new Module.EventManager.EventAction(IndexView.ElementIds.SortBy, this.mapped[IndexView.ElementIds.SortBy], "change"),
                    new Module.EventManager.EventAction(IndexView.ElementIds.ClearText, this.mapped[IndexView.ElementIds.ClearText], ["click"])
                ]

                this.manager = new Module.EventManager(this);
                this.manager.attach();
            }

            static getInstance() {
                if (!IndexView.instance) {
                    IndexView.instance = new IndexView();
                }

                return IndexView.instance;
            }

            clearText = (e: Event) => {
                if (this.mapped[IndexView.ElementIds.RosterSearch].value !== "") {
                    this.mapped[IndexView.ElementIds.RosterSearch].value = "";
                    this.submitSearch(e);
                }
            }

            sortBy = (e: Event) => {
                this.submitSearch(e);
            }

            submitSearch = (e: Event) => {
                var filter: Entity.Filter = this.filter();
                this._service.FindRostersByName(filter).then((html) => {
                    this.mapped[IndexView.ElementIds.ShowRoster].innerHTML = html;
                }).catch((e) => { });
            }
        }

        export module IndexView {
            export enum ElementIds {
                SearchBy = "searchBy",
                SortBy = "sortBy",
                RosterSearch = "rosterSearch",
                SubmitSearch = "submitSearch",
                ShowRoster = "showRoster",
                ClearText = "clearText"
            }
        }
    }
}

GScope.Page.IndexView.getInstance()