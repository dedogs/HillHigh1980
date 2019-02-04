
module GScope {
    export module Entity {
        export class Roster {
            rosterId: number = 0;
            firstName: string = "";
            middle: string = "";
            lastName: string = "";
            found: boolean = false;
            image: string = "";
            caption: string = "";
            link: string = "";
            locations: Location[] = [];

            RosterId(): number;
            RosterId(rosterId?: number): number {
                if (!Utility.is(rosterId).nul().ok()) {
                    this.rosterId = rosterId;
                }
                return this.rosterId;
            }

            FirstName(): string;
            FirstName(firstName?: string): string {
                if (!Utility.is(firstName).nul().ok()) {
                    this.firstName = name;
                }
                return this.firstName;
            }

            Middle(): string;
            Middle(middle?: string): string {
                if (!Utility.is(middle).nul().ok()) {
                    this.middle = middle;
                }
                return this.middle;
            }

            LastName(): string;
            LastName(lastName?: string): string {
                if (!Utility.is(lastName).nul().ok()) {
                    this.lastName = lastName;
                }
                return this.lastName;
            }

            Found(): boolean;
            Found(found?: boolean): boolean {
                if (!Utility.is(found).nul().ok()) {
                    this.found = found;
                }
                return this.found;
            }

            Image(): string;
            Image(image?: string): string {
                if (!Utility.is(image).nul().ok()) {
                    this.image = image;
                }
                return this.image;
            }

            Caption(): string;
            Caption(caption?: string): string {
                if (!Utility.is(caption).nul().ok()) {
                    this.caption = caption;
                }
                return this.caption;
            }

            Link(): string;
            Link(link?: string): string {
                if (!Utility.is(link).nul().ok()) {
                    this.link = link;
                }
                return this.link;
            }

            Location(): Location[];
            Location(location?: Location);
            Location(location?: Location, locations?: Location[]): Location[] {
                if (!(Utility.is(locations).nul().ok() || Utility.is(locations).undef().ok())) {
                    this.locations.concat(locations);
                } else if (!(Utility.is(location).nul().ok() || Utility.is(location).undef().ok())) {
                    this.locations.push(location);
                }
                return this.locations;
            }
        }
    }
}
