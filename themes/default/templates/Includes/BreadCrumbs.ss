<% if Level(1) && $URLSegment != 'home' %>
<section id="breadcrumbs">
	<ol class="breadcrumb">
		<li><a href="$BaseHref">Home</a></li>
		$Breadcrumbs
	</ol>
</section>
<% end_if %>