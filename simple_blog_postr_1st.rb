require "rubygems"
require "sinatra"
require "sinatra/contrib/all" # or require "shotgun" on Mac

get '/' do
	"<html>
		<style>
			<!-- Include CSS code here -->
			body {
				margin: 0;
				padding: 0;
				background: #FFFFFF;
				font-family: Arial, Helvetica, sans-serif;
				font-size: 12px;
				color: #787878;
			}
			h1, h2, h3 {
				margin: 0;
				padding: 0;
			}
			h1 {
				font-family: 'Courier New', courier, monotype;
				font-size: 3em;
				font-weight: bold;
				text-align: center;
				letter-spacing: .1em;
			}
			h2 {
				font-family: Georgia, 'Times New Roman', Times, serif;
				font-size: 1.4em;
				font-weight: bold;
				color: #996666;
			}
			p, ul, ol {
				margin-top: 0;
				line-height: 180%;
			}
			#wrapper {
				width: 980px;
				margin: 0 auto;
				padding: 0;
			}
			#header {
				width: 980px;
				text-align: center;
				color: white;
				background-color: #999966;
			}
			#page {
				width: 960px;
				margin: 0 auto;
				padding: 0;
			}
			#page-bgtop {
				padding: 5px 20px;
			}
			#page-bgbtm {
			}
			#entrypg {
				width: 920px;
				padding: 0;
				color: #999966;
				background-color: #ebebe0;
				display: block;
				border: 1px solid #999966;
			}
			#entrypg h2 {
				height: 42px;
				padding: 8px 0 0 20px;
				letter-spacing: -.5px;
				text-align: left;
				color: #999966;
			}
			#entrypg p {
				line-height: 15px;
				margin-left: 20px;
				margin-right: 10px;
			}
			#entrypg label {
				font: 13px/20px Arial, Helvetica, sans-serif;
				width: 13em;
				float: left;
				text-align: right;
				margin-right: 2em;
			}
			#entrypg input {
				color: #4D704D;
				background: #fafafa;
				border: 1px solid #cfcfcf;
			}
			.button1 {
				color: #000;
				background: #ebebe0;
				border: 1px solid #999966;
				margin-left: 16.4em;
				border: 1px solid #999966;
			} 
			.chkbox {
				margin-left: 15em;
			}
			#entrypg select {
				color: #4D704D;
				background: #fafafa;
				border: 1px solid #cfcfcf;
			}
			#entrypg textarea {
				background: #fafafa;
				border: 1px solid #cfcfcf;
				font: 12px courier;
				color: #4D704D;
			}
			#footer {
				width: 960px;
				background: #474036;
				height: 50px;
				margin: 0 auto;
				padding: 0px 0 15px 0;
				font-family: Arial, Helvetica, sans-serif;
			}
			#footer p {
				margin: 0;
				padding-top: 20px;
				line-height: normal;
				font-size: 9px;
				text-transform: uppercase;
				text-align: center;
				color: #E1F5A6;
			}
			#footer a {
				color: #FFFFFF;
			}
		</style>
		<body>
			<div id='wrapper'>
				<div id='header'>
					<h1>simple blog post form</h1>
					<p>Submit your ideas here for all the world to read</p>
				</div>
				<div id='page'>
				<div id='page-bgtop'>
				<div id='page-bgbtm'>				
					<div id='entrypg'>
						<h2>Post Information</h2>
						<form name='postform' action='/printpost'>
						<p>
						<label for='title'>Post Title</label>
						<input type='text' name='title' id='title' size='30'>
						</p>
						<p>
						<label for='poster'>Poster Name</label>
						<input type='text' name='poster' id='poster' size='30'>
						</p>
						<p>
						<label for='SEAfld'>Field of Conflict</label>
						<select name='SEAfld'>
						  <option name='SEAfld' size='14'>&nbsp;
						  <option name='SEAfld' size='14'>Air
						  <option name='SEAfld' size='14'>Land
						  <option name='SEAfld' size='14'>Sea
						  <option name='SEAfld' size='14'>Special Ops
						</select>
						</p>
						<p>
						<label for='theaterfld'>Theater of Operations</label>
						<select name='theaterfld'>
						  <option name='theaterfld' size='20'>&nbsp;
						  <option name='theaterfld' size='20'>Asia
						  <option name='theaterfld' size='20'>Eastern Front
						  <option name='theaterfld' size='20'>Mediterranean
						  <option name='theaterfld' size='20'>Northwest Europe
						  <option name='theaterfld' size='20'>Pacific
						</select>
						</p>
						<p>
						<label for='blogpost'>Enter Post Here</label>
						<textarea name='blogpost' rows='15' cols='70' wrap>Type</textarea>
						</p>
						<p>
						<input type='checkbox' name='allowcomments' value='allowcomments' class='chkbox' />Allow comments?<br />
						</p>						
						<input type='submit' value='Submit Post' class='button1'>
						</form>
					</div>
				</div>
				</div>
				</div>
				<div id='footer'>
					<p>Copyright (c) 2013 fakeblogspot.com. All rights reserved. Site Design inspired by <a href='http://www.freecsstemplates.org/'>Free CSS Templates</a>.<br />
				</div>
			</div>
		</body>
	</html>"
end

get '/printpost' do
	"<html>
	<head>
		<style>
			<!-- css for output goes here -->
			#wrapper {
				width: 1200px;
				margin: 0 auto;
				background-color: #f2f2f2;
			}
			a { text-decoration:none; }
			a:visited { text-decoration:none; }

			header {
				display: block;
				width: 100%;
				margin: 0 auto;
				color: #ccc;
				background-color: #333;
			}
			header h1 {
				font: 36px bold serif;
				text-align: center;
			}
			header p {
				font: 16px/30px italic serif;
				text-align: center;
			}
			nav {
				clear: left;
				margin: 0;
				padding: 0;
				font: 16px/30px bold san-serif;
				color: #ccc;
				background-color: #333;
			}
			nav ul {
				margin-left: 140px;
				margin-bottom: .5em;
				list-style: none;
				padding: .5em 2em .5em 0;
			}
			nav li {
				display: inline;
				padding: 0 3em;
				border-right: 1px dotted #b6b6b6;
				font-weight: bold;
			}
			nav a { 
				color: #ccc;
				text-decoration: none; 
			}
			nav a:hover{ 
				color: #fff;
				text-decoration: none; 
			}
			section {
				margin-left: 80px;
				width: 1050px;
				background-color: #fcfcfc;
			}
			article {
				border-bottom: 1px dashed #ccc;
				width:500px;
				padding: 10px 20px 40px 20px;
				float: right;
				background-color: #fcfcfc;
			}
			article h1 {
				font: 24px bold serif;
				color: black;
				margin-left: 1em;
			}
			article img {
				width: 460px;
				margin-left: 1em;
				border: 1px solid #5c5c3d;
			}
			article p {
				font: 16px/26px 'Arial', sans-serif;			
				margin-left: 1em;
				text-align: justify;
			}
			.byline {
				font: 14px/22px italic sans-serif;			
				padding: .5em 1em .5em 1em;
				text-align: center;
				color: #996;
			}
			aside {
				width: 250px;
				float: right;
				padding-left:40px;
				margin-top: 20px;
				margin-right: 30px;
			}
			aside ul {
				margin: 0;
				padding: 0;
				list-style: none;
			}
			aside h2 {
				font: 14px/24px 'Arial', sans-serif;
				color: #fff;
				background-color: #e6e6e6;
				border: 1px solid #b2b2b2;
				padding: .1em 0 .1em .5em;
			}
			aside li {
				margin: 0;
				padding: 0;
			}
			aside li ul {
				padding-bottom: 15px;
			}
			aside li li {
				line-height: 25px;
				border-bottom: 1px dotted #ccc;
				padding-left: 15px;
			}
			aside li li span {
				display: block;
				margin-top: 0px;
				line-height:15px;
				padding: 0;
				font-size: 11px;
				font-style: italic;
			}
			aside p {
				margin: 0 0px;
				padding: 0px 20px 20px 10px;
				text-align: justify;
			}
			aside a {
				color: #787878;
				border: none;
			}
			aside a:hover {
				color: #ffffff;
				background-color: #787878;
				font-weight: bold;
			}
			aside img {
				padding: 10px;
			}
		</style>
	</head>
	<body>
		<header>
			<h1>TurboHistory</h1>
			<p>Musings on WW2 at Internet Speed</p>
			<nav>
				<ul>
					<li><a href='#'>Home</a></li>
					<li><a href='#'>Land</a></li>
					<li><a href='#'>Air</a></li>
					<li><a href='#'>Sea</a></li>
					<li>&emsp; &emsp; &emsp; &emsp;</li>
					<li><a href='#'>About</a></li>
				</ul>
			</nav>
		</header>
		<div id='wrapper'>
			<section>
				<aside>
					<h2>Today's Sponsor</h2>
					<img src='http://placehold.it/200x200'>		
				  <ul>
				   <li>
					<h2>Web Links</h2>
					<ul>
					   <li><a href='http://www.britannica.com/EBchecked/topic/648813/World-War-II'>Encyclopedia Brittanica on WW2</a></li>
					   <li><a href='http://www.history.com/topics/world-war-ii'>History Channel's WW2 Content</a></li>
					   <li><a href='http://www.worldwar-2.net/index.htm'>worldwar-2.net: timelines</a></li>
					   <li><a href='http://www.bbc.co.uk/history/worldwars/wwtwo/'>BBC's WW2 Portal</a></li>
					   <li><a href='http://aerial.rcahms.gov.uk/database/record.php?usi=006-000-000-013-C&scache=2mhqa4ifj9&searchdb=tara_scran'>D-Day Aerial Photos</a></li>
					</ul>
				   </li>
				   <li>
					<h2>Further Reading</h2>
					<ul>
					   <li><a href='http://www.amazon.com/Second-World-War-Complete-History/dp/0805076239/ref=sr_1_1?s=books&ie=UTF8&qid=1366575626&sr=1-1&keywords=martin+gilbert'>'Second World War' by M. Gilbert</a></li>
					   <li><a href='http://www.amazon.com/Inferno-World-War-1939-1945-Vintage/dp/0307475530/ref=sr_1_1?s=books&ie=UTF8&qid=1366575711&sr=1-1&keywords=max+hastings+inferno'>'Inferno' by M. Hastings</a></li>
					   <li><a href='http://www.history.army.mil/armyhistory/issues_complete_guide.html'>Army History Magazine</a></li>
					   <li><a href='http://www.historynet.com/magazines/world_war_ii'>World War II Magazine</a></li>
					</ul>
				   </li>
				   <li>
					<ul>
					 <h2>Quotes</h2>
					   <li><span><p>Let us therefore brace ourselves to our duties, and so bear ourselves that if the British Empire and its Commonwealth last for a thousand years, men will still say, 'This was their finest hour.'</p>
					   --Winston Churchill</p></span></li>
					</ul>
				   </li>
				  </ul>
				</aside>
				<article>
					<h1>#{params[:title]}</p>
					<img src='http://placehold.it/460x250'>
					<p>#{params[:blogpost]}</p>
					<p class='byline'>posted by #{params[:poster]} &emsp; | &emsp; #{ Time.now.asctime }</p>
				</article>
			</section>
		</div>
		
	</body>
	</html>"
end