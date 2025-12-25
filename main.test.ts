import { assert } from "chai";

import { Vector } from "./main.js";

describe("Tests", () => {
  const a = new Vector([1, 2, 3]);
  const b = new Vector([4, 5, 6]);
  const c = new Vector([7, 8]);

  it("Addition", () => {
    const result = a.add(b);
    assert.isTrue(result.equals(new Vector([5, 7, 9])));
  });

  it("Subtraction", () => {
    const result = a.subtract(b);
    assert.isTrue(result.equals(new Vector([-3, -3, -3])));
  });

  it("Dot Product", () => {
    const result = a.dot(b);
    assert.strictEqual(result, 32);
  });

  it("Norm", () => {
    const result = a.norm();
    assert.strictEqual(result, Math.sqrt(14));
  });

  it("Dimension Mismatch", () => {
    assert.throws(() => a.add(c), RangeError);
    assert.throws(() => a.subtract(c), RangeError);
    assert.throws(() => a.dot(c), RangeError);
  });
});
