
module GScope {
    export module Entity {
        export class Location {
            locationId: number = 0;
            city: string = "";
            state: string = "";
            rosterId: number = 0;

            LocationId(): number;
            LocationId(locationId?: number): number {
                if (!Utility.is(locationId).nul().ok()) {
                    this.locationId = locationId;
                }
                return this.locationId;
            }

            City(): string;
            City(city?: string): string {
                if (!Utility.is(city).nul().ok()) {
                    this.city = city;
                }
                return this.city;
            }

            State(): string;
            State(state?: string): string {
                if (!Utility.is(state).nul().ok()) {
                    this.state = state;
                }
                return this.state;
            }

            RosterId(): number;
            RosterId(rosterId?: number): number {
                if (!Utility.is(rosterId).nul().ok()) {
                    this.rosterId = rosterId;
                }
                return this.rosterId;
            }
        }
    }
}