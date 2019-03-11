module GScope {
    export module Infrastructure {
        export class Antiforgery {

            private _RequestVerificationToken: string = "__RequestVerificationToken";
            private _headerName: string;

            constructor(headerName?: string) {
                this._headerName = headerName || "RequestVerificationToken";
            }

            get RequestVerificationToken(): string {
                return this._RequestVerificationToken;
            }
            set RequestVerificationToken(requestVerificationToken: string) {
                this._RequestVerificationToken = requestVerificationToken;
            }

            get HeaderName(): string {
                return this._headerName
            }

            set HeaderName(name: string) {
                this._headerName = name;
            }

            value = (): string => {
                return (<HTMLInputElement>$("input[name='" + this._RequestVerificationToken + "']")[0]).value;
            }
        }
    }
}