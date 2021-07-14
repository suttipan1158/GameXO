<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <style type="text/css">
      /*	Css สี่เหลี่ยม '*/
      .square {
        width: 140px;
        height: 140px;
        font-size: 60px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <br />
      <button id="reset" class="btn btn-primary btn-lg" onclick="ResetGame()">
        Reset
      </button>
      <button
        id="three"
        class="btn btn-primary btn-lg"
        onclick="three()"
        value="3"
      >
        3x3
      </button>
      <button id="four" class="btn btn-primary btn-lg" onclick="four()">
        4x4
      </button>
      <input type="hidden" id="NumBox" value="3" />
      <section id="sectionThree">
        <br />
        <div class="row">
          <div class="input-group col-md-6">
            <%for(int i = 0 ; i < 3 ; i++){ %> <%for(int j = 0 ; j < 3 ; j++){
            %>
            <input
              type="button"
              class="square"
              id="square<%=i%><%=j%>"
              value=""
              onclick="myFunction(<%=i%>,<%=j%>)"
            />
            <%} %>
            <br />
            <%} %>
          </div>
          <div class="col-mb-3">
            <h1>รายการแข่งขัน :</h1>
            <div id="listWin"></div>
          </div>
        </div>
        <br />
      </section>
      <section id="sectionFour" style="display: none">
        <br />
        <div class="row">
          <div class="input-group col-md-7">
            <%for(int i = 0 ; i < 4 ; i++){ %> <%for(int j = 0 ; j < 4 ; j++){
            %>
            <input
              type="button"
              class="square"
              id="four<%=i%><%=j%>"
              value=""
              onclick="myFunctionFour(<%=i%>,<%=j%>)"
            />
            <%} %>
            <br />
            <%} %>
          </div>
          <div class="col-mb-2">
            <h3>รายการแข่งขัน :</h3>
            <div id="listWinFour"></div>
          </div>
        </div>
        <br />
      </section>
    </div>

    <script src="/Web-GameXO/js/three.js"></script>
    <script src="/Web-GameXO/js/four.js"></script>
    <script src="/Web-GameXO/js/reset.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
