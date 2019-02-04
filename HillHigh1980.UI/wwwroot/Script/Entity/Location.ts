
module GScope {
    export module Entity {
        export class Location {
            private _locationId: number;
            private _city: string;
            private _state: string;
            private _rosterId: number;

            LocationId(locationId?: number): number {
                if (!Utility.is(locationId).nul().ok()) {
                    this._locationId = locationId;
                }
                return this._locationId;
            }

            City(city?: string): string {
                if (!Utility.is(city).nul().ok()) {
                    this._city = city;
                }
                return this._city;
            }

            State(state?: string): string {
                if (!Utility.is(state).nul().ok()) {
                    this._state = state;
                }
                return this._state;
            }

            RosterId(rosterId?: number): number {
                if (!Utility.is(rosterId).nul().or().undef().ok()) {
                    this._rosterId = rosterId;
                }
                return this._rosterId;
            }
        }
    }
}