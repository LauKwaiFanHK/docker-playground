const sayHello = require("./sayHello");

test("sayHello function works", () => {
    expect(sayHello("Wonka")).toBe("Hello Wonka!");
});