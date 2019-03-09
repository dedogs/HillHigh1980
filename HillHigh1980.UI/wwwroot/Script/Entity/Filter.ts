module GScope {
    export module Entity {
        export class Filter {
            private searchBy: Filter.Name;
            private sortBy: Filter.Name;
            private value: string;

            constructor() {
                this.sortBy = Filter.Name.LastName;
                this.searchBy = Filter.Name.LastName;
                this.value = "";
            }
            get SortBy() {
                return this.sortBy;
            }

            get SearchBy() {
                return this.searchBy;
            }

            set SortBy(sortBy: Filter.Name) {
                this.sortBy = sortBy;
            }

            set SearchBy(searchBy: Filter.Name) {
                this.searchBy = searchBy;
            }

            get Value() {
                return this.value;
            }

            set Value(value: string) {
                this.value = value;
            }

            storeFilterValues() {
                sessionStorage.setItem("fv", JSON.stringify({ "sortBy": this.SortBy, "searchBy": this.SearchBy, "value": this.Value }));
            }

            get Values(): Filter {
                var filter: Filter = new Filter(),
                    fv: Filter;

                if (!sessionStorage.getItem("fv")) {
                    sessionStorage.setItem("fv", JSON.stringify({ "sortBy": this.SortBy, "searchBy": this.SearchBy, "value": this.Value }));
                }

                fv = JSON.parse(sessionStorage.getItem("fv"));
                filter.SortBy = fv.sortBy;
                filter.SearchBy = fv.searchBy;
                filter.Value = fv.value;

                return filter;
            }
        }

        export module Filter {
            export enum Name {
                FirstName,
                LastName
            }
        }
    }
}