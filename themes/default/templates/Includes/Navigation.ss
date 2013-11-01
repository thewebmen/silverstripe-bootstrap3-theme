<div class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <% cached 'navigation', ID, List(Page).Max(LastEdited) %>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <% loop Menu(1) %>
                <% if $Children %>
                    <li class="$BootstrapLinkingMode $FirstLast dropdown">
                        <a href="$Link" class="dropdown-toggle">$MenuTitle.XML<b class="caret"></b></a>

					<% if Children %>
						<ul class="dropdown-menu">
							<% loop Children %>
								<li class="$LinkingMode $FirstLast">
									<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
								</li>
							<% end_loop %>
						</ul>
					<% end_if %>
                    </li>
                <% else %>
                    <li class="$BootstrapLinkingMode $FirstLast">
                        <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                    </li>
                <% end_if %>
            <% end_loop %>
        </ul>
    </div>
    <% end_cached %>
</div>