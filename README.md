<div class="container">
<div id="challenge" class="row">
<div class="col-sm-8">
<div class="row">
<div class="col-sm-12">
<div class="tab-content">
<div id="body" class="tab-pane fade in active">

We're going to create a web-based flash card application, starting with one that has a single deck. Eventually we'll add support for user-generated decks and improve the interface via AJAX.

This will be our most complicated web application yet. The goal is to get a feel for how you manage complexity as projects grow and become more nuanced on both the front-end and backend.

This challenge will also have dimensions of product management and everyday engineering. Often specifications you receive are incomplete, ambiguous, or even contradictory.
<h2>Learning Goals</h2>
<ul>
	<li>Managing application complexity via proper modeling.</li>
	<li>Project management fundamentals, including division of labor.</li>
	<li>Product management fundamentals in the face of incomplete specifications.</li>
	<li>Further practice with ActiveRecord, Sinatra, and ERB.</li>
</ul>
<h2>Objectives</h2>
<h3>Application Details</h3>
You'll pre-determine the set of decks. Later we'll add the ability for users to add their own, but for now you can add them via <code>seeds.rb</code> if you want. Add more than one. Ideas:
<ul>
	<li>English-to-other-language dictionaries. <a href="http://wiki.webz.cz/dict/">Try these</a>.</li>
	<li>US state capitals</li>
	<li>World capitals</li>
	<li>Historical events</li>
</ul>
Decks have many cards. A card belongs to a single deck. When a user signs in, they'll see a list of decks.

Users can play a "round," which is a series of guesses over all the cards in a deck. User should be able to see a list of all the rounds they've completed and statistics for that round (deck used, number guessed, number correct, number incorrect, etc.)

To make it easier, we'll say that a user can only use the flash cards if they're logged in.
<h3>Routes &amp; Models</h3>
Determine your routes, and use multiple controller files. When I'm logged in, I'll want to be able to do things like:
<ul>
	<li>Start a round by picking a deck</li>
	<li>Play through a round</li>
	<li>Get feedback on how my round went</li>
	<li>See how all my past rounds went</li>
</ul>
What routes and models will you need? Most likely you'll need <em>at least</em> the following models: <code>User</code>, <code>Deck</code>, <code>Card</code>,<code>Round</code>, and <code>Guess</code>.

Think about how you're going to model a <code>Round</code> in particular. You make a guess and see the answer regardless of whether you were correct, although the system tells you whether you were correct. If your guess was incorrect, you're given another random card so far that you haven't guessed correctly, until you've run out of guesses.

There are other ways to conduct a round, but this is how we'll do it for now. Feel free to do something more interesting if the spirit moves you.
<h3>Simple UI</h3>
Don't worry about AJAX for now. Create a simple UI that lets you submit guesses and, if correct, advances to the next card in the round. You should log both incorrect and correct guesses.

When a user is done they should be redirected to a page that shows a list of all the rounds they've completed in chronological order from most recent to least recent. On this page you should also include stats about the round, like total number of guesses, total number of cards in the round, % correct, etc.
<h3>Submitting Your Attempt</h3>
When you're done, find a staff member to look over your code and UI to review it. After you incorporate their feedback, paste your repo URL into a gist and <strong>submit the gist</strong> .

</div>
</div>
</div>
</div>
</div>
</div>
</div>
&nbsp;
