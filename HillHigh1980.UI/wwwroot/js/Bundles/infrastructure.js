var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    }
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var SeedPages = /** @class */ (function (_super) {
            __extends(SeedPages, _super);
            function SeedPages() {
                return _super !== null && _super.apply(this, arguments) || this;
            }
            SeedPages.prototype.Details = function (seedId) {
                return $.ajax({
                    url: "/Seed/Details",
                    data: { seedId: seedId },
                    dataType: "html",
                    type: "GET"
                });
            };
            SeedPages.prototype.Index = function () {
                return $.ajax({
                    url: "/Seeds",
                    dataType: "html",
                    type: "GET"
                });
            };
            return SeedPages;
        }(GScope.ApplicationService.SeedPageService));
        Infrastructure.SeedPages = SeedPages;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterDetails.js.map
var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterDetailsRepository = /** @class */ (function () {
            function RosterDetailsRepository() {
            }
            RosterDetailsRepository.prototype.Create = function (item) {
                throw new Error("Method not implemented.");
            };
            RosterDetailsRepository.prototype.FindById = function (id) {
                throw new Error("Method not implemented.");
            };
            RosterDetailsRepository.prototype.ReadAll = function () {
                throw new Error("Method not implemented.");
            };
            RosterDetailsRepository.prototype.Update = function (item) {
                throw new Error("Method not implemented.");
            };
            RosterDetailsRepository.prototype.Delete = function (item) {
                throw new Error("Method not implemented.");
            };
            RosterDetailsRepository.prototype.Count = function () {
                throw new Error("Method not implemented.");
            };
            return RosterDetailsRepository;
        }());
        Infrastructure.RosterDetailsRepository = RosterDetailsRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterDetailsRepository.js.map
//# sourceMappingURL=RosterLocationRepository.js.map
var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var RosterDetailsRepository = /** @class */ (function () {
            function RosterDetailsRepository() {
            }
            RosterDetailsRepository.prototype.ReadAll = function () {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            };
            RosterDetailsRepository.prototype.FindById = function (rosterId) {
                return $.ajax({
                    dataType: "json",
                    url: "/api/Roster",
                    method: "GET"
                });
            };
            RosterDetailsRepository.prototype.Update = function (roster) {
                throw new Error("Method not implemented.");
            };
            return RosterDetailsRepository;
        }());
        Infrastructure.RosterDetailsRepository = RosterDetailsRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterRepository.js.map
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    }
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var SeedPages = /** @class */ (function (_super) {
            __extends(SeedPages, _super);
            function SeedPages() {
                return _super !== null && _super.apply(this, arguments) || this;
            }
            SeedPages.prototype.Details = function (seedId) {
                return $.ajax({
                    url: "/Seed/Details",
                    data: { seedId: seedId },
                    dataType: "html",
                    type: "GET"
                });
            };
            SeedPages.prototype.Index = function () {
                return $.ajax({
                    url: "/Seeds",
                    dataType: "html",
                    type: "GET"
                });
            };
            return SeedPages;
        }(GScope.ApplicationService.SeedPageService));
        Infrastructure.SeedPages = SeedPages;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=SeedPages.js.map
var GScope;
(function (GScope) {
    var Infrastructure;
    (function (Infrastructure) {
        var SeedRepository = /** @class */ (function () {
            function SeedRepository() {
            }
            SeedRepository.prototype.FindByIdInclude = function (seedId) {
                throw new Error("Method not implemented.");
            };
            SeedRepository.prototype.FindById = function (seedId) {
                throw new Error("Method not implemented.");
            };
            SeedRepository.prototype.Create = function (seed) {
                throw new Error("Method not implemented.");
            };
            SeedRepository.prototype.ReadAll = function () {
                throw new Error("Method not implemented.");
            };
            SeedRepository.prototype.Update = function (item) {
                throw new Error("Method not implemented.");
            };
            SeedRepository.prototype.Delete = function (item) {
                throw new Error("Method not implemented.");
            };
            SeedRepository.prototype.Count = function () {
                throw new Error("Method not implemented.");
            };
            return SeedRepository;
        }());
        Infrastructure.SeedRepository = SeedRepository;
    })(Infrastructure = GScope.Infrastructure || (GScope.Infrastructure = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=SeedRepository.js.map