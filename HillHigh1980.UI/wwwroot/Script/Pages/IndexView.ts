module GScope {
    export module Page {
        export class IndexView {
            private static instance: IndexView;
            private mapped: any;
            private filter: Entity.Filter;
            private _service: ApplicationService.Service.RosterService;
            private manager: Module.EventManager;
            private setFilterValues = () => {
                this.mapped[IndexView.ElementIds.SortBy].selectedIndex = this.filter.Values.SortBy;
                this.mapped[IndexView.ElementIds.SearchBy].selectedIndex = this.filter.Values.SearchBy;
                this.mapped[IndexView.ElementIds.RosterSearch].value = this.filter.Values.Value;
            }
            private getFilterValues: () => void = (): void => {
                var sortBy: string = this.mapped[IndexView.ElementIds.SortBy].value,
                    searchBy: string = this.mapped[IndexView.ElementIds.SearchBy].value;

                this.filter.SearchBy = searchBy === "searchFirst" ? Entity.Filter.Name.FirstName : Entity.Filter.Name.LastName;
                this.filter.SortBy = sortBy === "sortFirst" ? Entity.Filter.Name.FirstName : Entity.Filter.Name.LastName;
                this.filter.Value = this.mapped[IndexView.ElementIds.RosterSearch].value;

                this.filter.storeFilterValues();
            };
            eventActions: Module.EventManager.EventAction[];

            private constructor() {
                this.filter = new Entity.Filter(); //Sets default values;

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

                this.setFilterValues();
                this.mapped[IndexView.ElementIds.SubmitSearch].click();
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
                this.getFilterValues();
                this._service.FindRostersByName(this.filter.Values).then((html) => {
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