
module GScope {
    export module Entity {
        export class Roster {
            rosterId: number;
            firstName: string;
            middle: string;
            lastName: string;
            found: boolean;
            image: string;
            caption: string;
            link: string;
            locations: Location[];


            get RosterId(): number {
                return this.rosterId;
            }
            set RosterId(rosterId: number) {
                this.rosterId = rosterId;
            }


            get FirstName(): string {
                return this.firstName;
            }
            set FirstName(firstName: string) {
                this.firstName = firstName;
            }

            get Middle(): string {
                return this.middle;
            }
            set Middle(middle: string) {
                this.middle = middle;
            }

            get LastName(): string {
                return this.lastName;
            }
            set LastName(lastName: string) {
                this.lastName = lastName;
            }

            get Found(): boolean {
                return this.found;
            }
            set Found(found: boolean) {
                this.found = found;
            }

            get Image(): string {
                return this.image;
            }
            set Image(image: string) {
                this.image = image;
            }

            get Caption(): string {
                return this.caption;
            };
            set Caption(caption: string) {
                this.caption = caption;
            }

            get Link(): string {
                return this.link;
            }
            set Link(link: string) {
                this.link = link;
            }

            get Locations(): Location[] {
                return this.locations;
            }
            set Locations(locations: Location[]) {
                this.locations.concat(locations);
            }
            set Location(location: Location) {
                this.locations.push(location);
            }
        }
    }
}
