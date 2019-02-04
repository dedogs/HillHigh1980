module GScope {
    export module Module {
        export class Injector {
            dependencies: {};
            register: (key: any, value: any) => any = (key, value) => { this.dependencies[key] = value };
            resolve = (...items) => {
                var args = [],
                    func = items[0],
                    deps = func.toString().match(/^function\s*[^\(]*\(\s*([^\)]*)\)/m)[1].replace(/ /g, '').split(','),
                    scope = items[1] || {};

                return (...arry) => {
                    for (var i = 0; i < deps.length; i++) {
                        var d = deps[i];
                        args.push(this.dependencies[d] && d != '' ? this.dependencies[d] : arry.shift());
                    }
                    func.apply(scope || {}, args);
                }
            }
        };
    }
}