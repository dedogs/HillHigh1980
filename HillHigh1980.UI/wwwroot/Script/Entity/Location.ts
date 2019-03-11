
module GScope {
    export module Entity {
        export class Location {
            private locationId: number;
            private city: string;
            private state: string;
            private country: string;
            private rosterId: number;
            private requestToken: string;
            private headerName: string;
            private antiforgery: Infrastructure.Antiforgery;

            constructor(headerName?: string, requestToken?: string) {
                this.requestToken = requestToken;
                this.headerName = headerName;
            }

            get LocationId(): number {
                return this.locationId;
            }
            set LocationId(locationId: number) {
                this.locationId = locationId;
            }
            get City(): string {
                return this.city;
            }
            set City(city: string) {
                this.city = city;
            }
            get State(): string {
                return this.state;
            }
            set State(state: string) {
                this.state = state;
            }
            get Country(): string {
                return this.country;
            }
            set Country(country: string) {
                this.country = country;
            }
            get RosterId(): number {
                return this.rosterId;
            }
            set RosterId(rosterId: number) {
                this.rosterId = rosterId;
            }
        }
    }
}