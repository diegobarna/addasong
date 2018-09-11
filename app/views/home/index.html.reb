<div class="content">
  <% if @playlist_id %>
    <h1>Añade canciones a esta lista por Whatsapp</h1>

    <iframe src="https://open.spotify.com/embed/user/<%= @user_id %>/playlist/<%= @playlist_id %>" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
  <% else %>
    <h1>Connect your Spotify account</h1>

    <p><%= link_to 'Sign in with Spotify', '/auth/spotify' %></p>
  <% end %>
</div>

<script>
window.addEventListener('load', function() {
  var iframe = document.querySelector('iframe');
  if (iframe) {
    setInterval(function() {
      iframe.src = iframe.src;
    }, 60000);
  }
})
</script>
