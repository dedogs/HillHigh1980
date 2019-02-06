
module GScope {
    export module Entity {
        export class Location {
            private locationId: number;
            private city: string;
            private state: string;
            private rosterId: number;

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
            get RosterId(): number {
                return this.rosterId;
            }
            set RosterId(rosterId: number) {
                this.rosterId = rosterId;
            }
        }
    }
}