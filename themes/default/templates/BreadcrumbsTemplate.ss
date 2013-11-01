<% if Pages %>
<% loop Pages %>
<% if Last %>
<li class="active">$Title.XML</li>
<% else %>
<li><a href="$Link">$MenuTitle.XML</a></li>
<% end_if %>
<% end_loop %>
<% end_if %>