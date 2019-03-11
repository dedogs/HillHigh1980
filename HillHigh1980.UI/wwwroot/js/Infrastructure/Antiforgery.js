var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var Antiforgery = /** @class */ (function () {
            function Antiforgery(headerName) {
                var _this = this;
                this._RequestVerificationToken = "__RequestVerificationToken";
                this.value = function () {
                    return $("input[name='" + _this._RequestVerificationToken + "']")[0].value;
                };
                this._headerName = headerName || "RequestVerificationToken";
            }
            Object.defineProperty(Antiforgery.prototype, "RequestVerificationToken", {
                get: function () {
                    return this._RequestVerificationToken;
                },
                set: function (requestVerificationToken) {
                    this._RequestVerificationToken = requestVerificationToken;
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(Antiforgery.prototype, "HeaderName", {
                get: function () {
                    return this._headerName;
                },
                set: function (name) {
                    this._headerName = name;
                },
                enumerable: true,
                configurable: true
            });
            return Antiforgery;
        }());
        Infrastructure.Antiforgery = Antiforgery;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Antiforgery.js.map