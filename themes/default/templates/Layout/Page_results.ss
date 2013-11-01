<div class="container">
    <h1>$Title</h1>
    <div class="well">
        <% if Query %>
        <div class="sub">U zoekt op &quot;{$Query}&quot;</div>
        <% end_if %>
    </div>
    <% if Results %>
    <% control Results %>
    <article class="result">
        <h2><a href="$Link"><% if MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></a></h2>
        <p>$Content.LimitWordCountXML <br/><a class="read-more" href="$Link">Lees meer over &quot;{$Title}&quot;</a></p>
    </article>
    <% end_control %>
    <% else %>
    <p>Geen resultaten gevonden.</p>
    <% end_if %>

    <% if Results.MoreThanOnePage %>
    <div class="paging">
        <p>Pagina $Results.CurrentPage van $Results.TotalPages</p>

        <div class="pagination pagination-centered">
            <ul>
                <% if Results.NotFirstPage %>
                <li><a class="prev" href="$Results.PrevLink">&larr;</a></li>
                <% end_if %>
                <% control Results.Pages %>
                <% if CurrentBool %>
                <li class="active"><a href="#">$PageNum</a></li>
                <% else %>
                <li><a href="$Link" class="go-to-page">$PageNum</a></li>
                <% end_if %>
                <% end_control %>
                <% if Results.NotLastPage %>
                <li><a class="next" href="$Results.NextLink">&rarr;</a></li>
                <% end_if %>
            </ul>
        </div>
    </div>
    <% end_if %>
</div>