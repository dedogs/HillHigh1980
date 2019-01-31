
module GScope {
    export module Entity {
        export class Roster {
            _rosterId: number;
            _firstName: string;
            _middle: string;
            _lastName: string;
            _found: boolean;
            _image: string;
            _caption: string;
            _link: string;
            _locations: Location[];

            RosterId(): number;
            RosterId(rosterId?: number): number {
                if (!Utility.is(rosterId).nul().ok()) {
                    this._rosterId = rosterId;
                }
                return this._rosterId;
            }

            FirstName(): string;
            FirstName(firstName?: string): string {
                if (!Utility.is(firstName).nul().ok()) {
                    this._firstName = name;
                }
                return this._firstName;
            }

            Middle(): string;
            Middle(middle?: string): string {
                if (!Utility.is(middle).nul().ok()) {
                    this._middle = middle;
                }
                return this._middle;
            }

            LastName(): string;
            LastName(lastName?: string): string {
                if (!Utility.is(lastName).nul().ok()) {
                    this._lastName = lastName;
                }
                return this._lastName;
            }

            Found(): boolean;
            Found(found?: boolean): boolean {
                if (!Utility.is(found).nul().ok()) {
                    this._found = found;
                }
                return this._found;
            }

            Image(): string;
            Image(image?: string): string {
                if (!Utility.is(image).nul().ok()) {
                    this._image = image;
                }
                return this._image;
            }

            Caption(): string;
            Caption(caption?: string): string {
                if (!Utility.is(caption).nul().ok()) {
                    this._caption = caption;
                }
                return this._caption;
            }

            Link(): string;
            Link(link?: string): string {
                if (!Utility.is(link).nul().ok()) {
                    this._link = link;
                }
                return this._link;
            }

            Location(): Location[];
            Location(location?: Location);
            Location(location?: Location, locations?: Location[]): Location[] {
                if (!Utility.is(locations).nul().ok()) {
                    this._locations.concat(locations);
                } else if (!Utility.is(location).nul().ok()) {
                    this._locations.push(location);
                }
                return this._locations;
            }
        }
    }
}
