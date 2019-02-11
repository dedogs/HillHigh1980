module GScope {
    export module Page {
        export class IndexView {
            private static instance: IndexView;
            private mapped: any;
            private manager: Module.EventManager;

            private constructor() {
                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: IndexView.ElementIds.Search, value: IndexView.ElementIds.Search },
                        { key: IndexView.ElementIds.FilterBy, value: IndexView.ElementIds.FilterBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SortBySelected, value: IndexView.ElementIds.SortBySelected }
                    ])
                })();

                var events = [
                    new Module.EventManager.EventAction(IndexView.ElementIds.FilterBy, this.mapped[IndexView.ElementIds.FilterBy], "change"),
                    new Module.EventManager.EventAction(IndexView.ElementIds.SortBy, this.mapped[IndexView.ElementIds.SortBy], "click")
                ]

                this.manager = new Module.EventManager(this);

                this.manager.add(events);
                this.manager.attach();
            }

            static getInstance() {
                if (!IndexView.instance) {
                    IndexView.instance = new IndexView();
                }

                return IndexView.instance;
            }

            filterBy = (e: Event) => {
                alert("changed filter");
            };
            sortBy = (e: Event) => {
                this.mapped[IndexView.ElementIds.SortBySelected].innerHTML = (<HTMLElement>e.target).innerHTML;
                this.mapped[IndexView.ElementIds.SortBySelected].click();
            };
        }

        export module IndexView {
            export enum ElementIds {
                Search = "rosterSearch",
                FilterBy = "filterBy",
                SortBy = "sortBy",
                SortBySelected = "sortBySelected"
            }
            export enum FilterBy {
                FirstName = "First Name",
                LastName = "Last Name"
            }
            export enum SortBy {
                FirstName = "First Name",
                LastName = "Last Name"
            }
        }
    }
}

GScope.Page.IndexView.getInstance()