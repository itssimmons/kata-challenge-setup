import { assert } from "chai";

import { pigIt } from "./main.js";

describe("Tests", () => {
	it("simple test", () => {
		assert.strictEqual(pigIt("Pig latin is cool"), "igPay atinlay siay oolcay");
		assert.strictEqual(pigIt("This is my string"), "hisTay siay ymay tringsay");
	});

	it("random test", () => {
		assert.strictEqual(
			pigIt(
				"qKxQySWAzw y cPM  rvitRQmh lWIpv  c pqnujsEHjCZAWROE  Hs  ! YKEbyTwRXMUq  GbIU pBI  LLmNnqvAbwz  gg  N RDsrbEPIPE  fWuSrImGH",
			),
			"XseuuekVaCEVgay ? ! ! ! Vgay ydtay GiVFXCJTVay  cKNZfdtnvay rWMtYhyWKKnmUXKay ? ? CcGupIxYIhIOkXay smyEvaVBpBJmay MbNhvLwfFKnNay",
		);
	});
});
