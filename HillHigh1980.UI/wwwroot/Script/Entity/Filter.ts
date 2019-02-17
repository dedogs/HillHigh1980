module GScope {
    export module Entity {
        export class Filter {
            private searchBy: Filter.Name;
            private sortBy: Filter.Name;
            private value: string;

            constructor(searchBy: Filter.Name, sortBy: Filter.Name) {
                this.sortBy = sortBy;
                this.searchBy = searchBy;
            }

            get SortBy() {
                return this.sortBy;
            }

            get SearchBy() {
                return this.searchBy;
            }
            get Value() {
                return this.value;
            }

            set Value(value: string) {
                this.value = value;
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