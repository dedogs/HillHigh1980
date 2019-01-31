//# sourceMappingURL=IRosterLocationService.js.map
//# sourceMappingURL=IRosterService.js.map
//# sourceMappingURL=ISeedPageService.js.map
//# sourceMappingURL=ISeedService.js.map
var GScope;
(function (GScope) {
    var ApplicationService;
    (function (ApplicationService) {
        var RostedLocationService = /** @class */ (function () {
            function RostedLocationService() {
            }
            RostedLocationService.prototype.Count = function () {
                throw new Error("Method not implemented.");
            };
            RostedLocationService.prototype.CreateSeed = function (location) {
                throw new Error("Method not implemented.");
            };
            RostedLocationService.prototype.FindSeedById = function (locationId) {
                throw new Error("Method not implemented.");
            };
            RostedLocationService.prototype.FindSeedByIdInclude = function (locationId) {
                throw new Error("Method not implemented.");
            };
            RostedLocationService.prototype.GetAllSeeds = function () {
                throw new Error("Method not implemented.");
            };
            RostedLocationService.prototype.UpdateSeed = function (seed) {
                throw new Error("Method not implemented.");
            };
            RostedLocationService.prototype.DeleteSeed = function (seed) {
                throw new Error("Method not implemented.");
            };
            return RostedLocationService;
        }());
        ApplicationService.RostedLocationService = RostedLocationService;
    })(ApplicationService = GScope.ApplicationService || (GScope.ApplicationService = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=RosterLocationService.js.map
var GScope;
(function (GScope) {
    var ApplicationService;
    (function (ApplicationService) {
        var SeedPageService = /** @class */ (function () {
            function SeedPageService() {
            }
            return SeedPageService;
        }());
        ApplicationService.SeedPageService = SeedPageService;
    })(ApplicationService = GScope.ApplicationService || (GScope.ApplicationService = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=SeedPageService.js.map
var GScope;
(function (GScope) {
    var ApplicationService;
    (function (ApplicationService) {
        var SeedService = /** @class */ (function () {
            function SeedService(repository) {
                this._repository = repository;
            }
            SeedService.prototype.Count = function () {
                return 0;
            };
            SeedService.prototype.CreateSeed = function (seed) {
                return new GScope.Entity.Seed();
            };
            SeedService.prototype.DeleteSeed = function (seed) {
                return new GScope.Entity.Seed();
            };
            SeedService.prototype.FindSeedById = function (seedId) {
                return new GScope.Entity.Seed();
            };
            SeedService.prototype.FindSeedByIdInclude = function (seedId) {
                return new GScope.Entity.Seed();
            };
            SeedService.prototype.GetAllSeeds = function () {
                return [];
            };
            SeedService.prototype.UpdateSeed = function (seed) {
                return new GScope.Entity.Seed();
            };
            return SeedService;
        }());
        ApplicationService.SeedService = SeedService;
    })(ApplicationService = GScope.ApplicationService || (GScope.ApplicationService = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=SeedService.js.map
//# sourceMappingURL=ILocationRepository.js.map
//# sourceMappingURL=IRepository.js.map
//# sourceMappingURL=IRosterLocationRepository.js.map
//# sourceMappingURL=IRosterRepository.js.map
//# sourceMappingURL=ISeedRepository.js.map