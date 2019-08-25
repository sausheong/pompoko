<%!
    from markdown import markdown
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Pom Poko Blog</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
        <div class="container">
            <h1><img src="/_s/pompoko.png" height="60px"> Pom Poko!</h1>
            <a href="/_/poko/create">New post</a>
            % for post in posts:
            <h2>${post['title']}</h2>
            <div>
                ${markdown(post['content'])}
            </div>
            <hr/>
            % endfor            
        </div>
  </body>
</html>