var GScope;
(function (GScope) {
    var Module;
    (function (Module) {
        var Injector = /** @class */ (function () {
            function Injector() {
                var _this = this;
                this.register = function (key, value) { _this.dependencies[key] = value; };
                this.resolve = function () {
                    var items = [];
                    for (var _i = 0; _i < arguments.length; _i++) {
                        items[_i] = arguments[_i];
                    }
                    var args = [], func = items[0], deps = func.toString().match(/^function\s*[^\(]*\(\s*([^\)]*)\)/m)[1].replace(/ /g, '').split(','), scope = items[1] || {};
                    return function () {
                        var arry = [];
                        for (var _i = 0; _i < arguments.length; _i++) {
                            arry[_i] = arguments[_i];
                        }
                        for (var i = 0; i < deps.length; i++) {
                            var d = deps[i];
                            args.push(_this.dependencies[d] && d != '' ? _this.dependencies[d] : arry.shift());
                        }
                        func.apply(scope || {}, args);
                    };
                };
            }
            return Injector;
        }());
        Module.Injector = Injector;
        ;
    })(Module = GScope.Module || (GScope.Module = {}));
})(GScope || (GScope = {}));
//# sourceMappingURL=Injector.js.map