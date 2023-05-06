<cfoutput>
	<h1>Links</h1>

	<ul>
		<cfloop array=#prc.link# item="u">
			<li>
				<a href=#u.href#>#u.name#</a>
			</li>
		</cfloop>
	</ul>
	</cfoutput>