<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Calculadora</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="estilosCalc.css">
<body>
	<main>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<form action="CalcServlet" method="post">
						<h4 class="mt-4 mb-2">Calculadora</h4>
						<div class="form-group">
							<label for="numero1">N�mero 1</label> <input type="text"
								class="form-control" id="numero1" name="numero1" required>
						</div>
						<div class="form-group">
						<label>Operaci�n</label>
						<select class="form-select" name="cboOperacion">
						<option selected>Seleccione</option>
						<option value="1">Suma</option>
						<option value="2">Resta</option>
						<option value="3">Multiplicaci�n</option>
						<option value="4">Divisi�n</option>
						</select>
						</div>
						<div class="form-group">
							<label for="numero2">N�mero 2</label> <input type="text"
								class="form-control" id="numero2" name="numero2" required>
						</div>
						
						<input type="submit" class="btn btn-info btn-block"
						id="calcular" value="calcular">
						<div class="form-group mt-4">
						<label for="calcular">Resultado</label>
						<input type="text" class="form-control" id="resultado"
						 name="resultado" disabled value="<% 
						 if(request.getSession().getAttribute("resultado")==null){
							 out.print("");
						 }else{
							 out.print(request.getSession().getAttribute("resultado"));
						 }
						 %>" >
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</main>




	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</head>
</html>