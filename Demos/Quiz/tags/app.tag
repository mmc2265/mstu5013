<app>
	<h1>Which number is bigger?</h1>

	<question each={ quizItem in quizQuestions }></question>

	<button type="button" onclick={ getGrade }>FINISH</button>

	<p>You got { grade } correct.</p>

	<script>
		var that = this;

		this.quizQuestions = [
			{
				id: "abc123",
				question: "What's bigger?",
				choices: [
					"1.png",
					"2.png",
					"3.png",
				],
				answer: "3.png"
			},
			{
				id: "def456",
				question: "What's bigger?",
				choices: [
					"4.png",
					"5.png",
					"6.png"
				],
				answer: "6.png"
			}
		];

		getGrade(e){
			console.log(this.quizQuestions);
			var correctItems = this.quizQuestions.filter(function(item) {
				return item.isCorrect;
			});
			console.log("number correct: ", correctItems.length);
			this.grade = correctItems.length;
		}
	</script>

	<style>
		:scope {
			display: block;
		}
	</style>
</app>
