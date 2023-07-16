<%@ page import="java.util.ArrayList" %>
<%@ page import="ar.com.codoacodo23049.oop.Oradores" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es-418">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CaC23049 | Listado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  <jsp:include page="navbar.jsp"/>
    <% 
     /*codigo java*/
     ArrayList<Oradores> listado = (ArrayList<Oradores>)request.getAttribute("listado"); //esto es un array
    %>
    <!-- aca van los mensajes-->
    <%
      String error = (String)request.getAttribute("error");
      String success = (String)request.getAttribute("success");
    %>
    <%
      if(error!=null) {
    %>
    <div class="alert alert-danger" role="alert">
      <%=error%>
    </div>
    <%
      }
    %>
    <%
      if(success != null) {
    %>
    <div class="alert alert-success" role="alert">
      <%=success%>
    </div>
    <%
    }
    %>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <section>
                    <h1>Listado de Articulos</h1>
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Consulta</th>
                          </tr>
                        </thead>
                        <tbody>
                            <% 
                            for(Oradores unarticulo : listado) {
                            %>
                                <tr>
                                    <th scope="row"><%=unarticulo.getId()%></th>
                                    <td><%=unarticulo.getNombre()%></td>
                                    <td><%=unarticulo.getApellido()%></td>
                                    <td><%=unarticulo.getDescripcion()%></td>
                                    <%-- <td><%=unarticulo.toDateData()%></td> --%>
                                    <td><%=unarticulo.getConsulta()%></td>
                                    getConsulta
                                    <td>
                                        <a href="<%=request.getContextPath()%>/DeleteController?id=<%=unarticulo.getId()%>" class="btn btn-danger" tabindex="-1" role="button" aria-disabled="true">
                                            Eliminar
                                        </a>
                                        <a class="btn btn-warning" tabindex="-1" role="button" aria-disabled="true">
                                          Editar
                                      </a> <!-- href="<%=request.getContextPath()%>/EditarController?id=<%=unarticulo.getId()%>"-->"
                                    </td>
                                </tr>
                            <% } %>
                        </tbody>
                      </table>
                </section>
            </div>
        </div>
</body>

</html>