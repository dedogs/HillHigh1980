/// <reference path="../bundles/application.js" />
/// <reference path="../bundles/entity.js" />
/// <reference path="../bundles/core.js" />
/// <reference path="../bundles/infrastructure.js" />

var done1, done2;
var actionMethod = function (data) {
    data.assert.equal(data.value, 1);
};
var callbackMethod = function (data) {
    data.assert.equal(data.value, 1);
    done1();
};

QUnit.test("", function (assert) {
    assert.ok(GScope.Utility.assign, "Asssign object available.");
});

QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({});

    assert.ok(typeof obj === "object" && Object.keys(obj).length === 0, "Asssign object available.");
});
QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({ test: 1 });

    assert.ok(obj.test, "Asssign object available.");
    assert.equal(obj.test, 1, "Asssign object available.");

});
QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({ test: {} });

    assert.equal(Object.keys(obj.test).length, 0, "Asssign object available.");

});
QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({ test: { test1: 2 } });

    assert.ok(obj.test.test1, "Asssign object available.");
    assert.equal(obj.test.test1, 2, "Asssign object available.");
});
QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({ test: [] });
    assert.equal(obj.test.length, 0, "Asssign object available.");

    obj = GScope.Utility.assign({ test: [1, 2, 3] });
    assert.equal(obj.test.length, 3, "Asssign object available.");

    obj = GScope.Utility.assign({ test: ["test1", "test2", "test3"] });
    assert.equal(obj.test.length, 3, "Asssign object available.");

    obj = GScope.Utility.assign({ test: ["test1", 1, {}] });
    assert.equal(obj.test.length, 3, "Asssign object available.");
});
QUnit.test("", function (assert) {
    obj = GScope.Utility.assign({ test: ["test1", 1, { test1: 1 }] });
    assert.ok(obj.test[2].test1, "Asssign object available.");
    assert.equal(obj.test[2].test1, 1, "Asssign object available.");

});
QUnit.test("", function (assert) {
    obj = GScope.Utility.assign({ test: ["test1", 1, { test1: [1, 2] }] });
    assert.ok(obj.test[2].test1, "Asssign object available.");
    assert.equal(obj.test[2].test1[1], 2, "Asssign object available.");

});
QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({ test: { test1: {} } });

    assert.ok(obj.test.test1, "Asssign object available.");
    assert.equal(Object.keys(obj.test.test1).length, 0, "Asssign object available.");

});

QUnit.test("", function (assert) {
    var obj = GScope.Utility.assign({ test: [[[[[10]]]]] });

    assert.equal(obj.test[0][0][0][0], 10, "Asssign object available.");

});
QUnit.test("", function (assert) {
    var o = [[[[[1,10]]]]];
    var obj = GScope.Utility.assign([[[[[1,10]]]]]);

    assert.equal(obj[0][0][0][0][1], 10, "Asssign object available.");
    assert.equal(obj[0][0][0][0][1], o[0][0][0][0][1], "Asssign object available.");

});
QUnit.test("", function (assert) {
    var o = [[[[[{ test: { test2: [10] } }]]]]];
    var obj = GScope.Utility.assign([[[[[{ test: { test2: [10] }}]]]]]);

    assert.equal(obj[0][0][0][0][0].test.test2[0], o[0][0][0][0][0].test.test2[0], "Asssign object available.");

});