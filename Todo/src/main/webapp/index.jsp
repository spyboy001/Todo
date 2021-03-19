<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <title>My Memories : Home page</title>
      <%@include file="alljs_css.jsp" %>
  </head>
  <body>
  
  <div class="container-fluid p-0 m-0">
  
  <%@include file="navbar.jsp" %>
  </div>
  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/diary1.jpg" class="d-block w-100" alt="..." style="width:1400px; height:600px;">
      <div class="carousel-caption d-none d-md-block">
        <h1 style="color:red">My Memories</h1>
        <p style="color:black; font-size:40px">Sometimes all it takes is a familiar smell or a certain taste to evoke an old memory, making you feel like you are back in time in that moment where it was created.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/diary2.jpg" class="d-block w-100" alt="..." style="width:1400px; height:600px;">
      <div class="carousel-caption d-none d-md-block">
        <h1 style="color:red">My Memories</h1>
        <p style="color:white; font-size:40px">Life brings tears, smiles, and memories. The tears dry, the smiles fade, but the memories last forever.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/diary3.jpg" class="d-block w-100" alt="..." style="width:1400px; height:600px;">
      <div class="carousel-caption d-none d-md-block">
        <h1 style="color:red">My Memories</h1>
        <p style="color:white; font-size:40px">Life is shorter, live it. Love is rare, grab it. Anger is bad, dump it. Fear is awful, face it. Memories are sweet, cherish it.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"  data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"  data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	
	
  </body>
</html>