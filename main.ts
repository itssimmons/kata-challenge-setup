export const pigIt = (a: string): string => {
	function eachWord(w: string) {
		if (w.length == 0) return " ";
		if (["!", "?", "."].includes(w)) return w;
		const arr = w.split("");
		const char = arr.shift() as string;
		arr.push(char, "ay");
		return arr.join("");
	}

	for (const w of a) {
		console.log(w);
	}

	console.log(a.split(" "));
	return a.split(" ").map(eachWord).join(" ");
};

console.log(pigIt("a Apple   Pear ! ! ? . Guava"));
