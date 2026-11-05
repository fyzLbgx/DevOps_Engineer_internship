const { add, multiply } = require('./math');

test('adds 2 + 3 to equal 5', () => {
  expect(add(2, 3)).toBe(5);
});

test('multiplies 2 * 4 to equal 8', () => {
  expect(multiply(2, 4)).toBe(8);
});
