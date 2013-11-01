<% if Menu(2) %>
<nav class="secondary">
	<ul class="nav nav-pills nav-stacked">
		<% loop Menu(2) %>
		<li class="$BootstrapLinkingMode">
			<a href="$Link"><span class="text">$MenuTitle.XML</span></a>
			<% if Children %>
			<ul class="nav nav-pills nav-stacked">
				<% loop Children %>
				<li class="$BootstrapLinkingMode"><a href="$Link"><span class="text">$MenuTitle.XML</span></a></li>
				<% end_loop %>
			</ul>
			<% end_if %>
		</li>
		<% end_loop %>
	</ul>
</nav>
<% end_if %>