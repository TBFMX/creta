jQuery ->
  $('body').prepend('<div id="fb-root"></div>')

  $.get(
        '/auth/facebook/callback',
        { signed_request: response.authResponse.signedRequest }
        );

  $.ajax
    url: "#{window.location.protocol}//connect.facebook.net/en_US/all.js"
    dataType: 'script'
    cache: true



window.fbAsyncInit = ->
  FB.init(appId: '<%= ENV["1451557391770177"] %>', cookie: true)

  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      window.location = '/auth/facebook/callback' if response.authResponse

      

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true