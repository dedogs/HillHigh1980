
module GScope {
    export module Entity {
        export class Location {
            _locationId: number;
            _city: string;
            _state: string;
            _rosterId: number;

            LocationId(): number;
            LocationId(locationId?: number): number {
                if (!Utility.is(locationId).nul().ok()) {
                    this._locationId = locationId;
                }
                return this._locationId;
            }

            City(): string;
            City(city?: string): string {
                if (!Utility.is(city).nul().ok()) {
                    this._city = city;
                }
                return this._city;
            }

            State(): string;
            State(state?: string): string {
                if (!Utility.is(state).nul().ok()) {
                    this._state = state;
                }
                return this._state;
            }

            RosterId(): number;
            RosterId(rosterId?: number): number {
                if (!Utility.is(rosterId).nul().ok()) {
                    this._rosterId = rosterId;
                }
                return this._rosterId;
            }
        }
    }
}