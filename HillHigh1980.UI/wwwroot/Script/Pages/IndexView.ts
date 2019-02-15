module GScope {
    export module Page {
        export class IndexView {
            private static instance: IndexView;
            private mapped: any;
            private manager: Module.EventManager;

            private constructor() {
                this.mapped = (() => {
                    return Module.MappedIds.get([
                        { key: IndexView.ElementIds.RosterSearch, value: IndexView.ElementIds.RosterSearch },
                        { key: IndexView.ElementIds.FilterBy, value: IndexView.ElementIds.FilterBy },
                        { key: IndexView.ElementIds.SortBy, value: IndexView.ElementIds.SortBy },
                        { key: IndexView.ElementIds.SubmitSearch, value: IndexView.ElementIds.SubmitSearch }
                    ])
                })();

                var events = [
                    new Module.EventManager.EventAction(IndexView.ElementIds.FilterBy, this.mapped[IndexView.ElementIds.FilterBy], "change"),
                    new Module.EventManager.EventAction(IndexView.ElementIds.SortBy, this.mapped[IndexView.ElementIds.SortBy], "change"),
                    new Module.EventManager.EventAction(IndexView.ElementIds.SubmitSearch, this.mapped[IndexView.ElementIds.SubmitSearch], "click")

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
                alert("changed sort");
            };
            submitSearch = (e: Event) => {
                alert(
                    this.mapped[IndexView.ElementIds.RosterSearch].value
                );
            }
        }

        export module IndexView {
            export enum ElementIds {
                FilterBy = "filterBy",
                SortBy = "sortBy",
                RosterSearch = "rosterSearch",
                SubmitSearch = "submitSearch"
            }
            export enum FilterBy {
                FirstName = "First Name",
                LastName = "Last Name"
            }
            export enum SearchBy {
                FirstName = "First Name",
                LastName = "Last Name"
            }
        }
    }
}

GScope.Page.IndexView.getInstance()