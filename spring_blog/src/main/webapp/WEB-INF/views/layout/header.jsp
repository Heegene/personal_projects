<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script>

$(document).on('click', '#btnSearchUp', function(e){
	e.preventDefault();
	var url = "${getBoardList}";
	url = url + "?searchType=" + $('#searchType').val();
	url = url + "&keyword=" + $('#keyword_above').val();
	location.href = encodeURI(url);
	console.log(url);
});


</script>
<!--  Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<!-- 공통 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css">



<!-- bootstrap theme -->
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Heegene.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExample03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/board/getBoardList">Board<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/menu/getMenu">Q&A</a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu" aria-labelledby="dropdown03">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-md-0">
      <input class="form-control form-control-sm" type="text" placeholder="Search" id="keyword_above" value="${pagination.keyword}">
      &nbsp; <button class="btn btn-sm btn-secondary" style= type="button" id="btnSearchUp">Go!</button>
    </form> 
  </div>
</nav>