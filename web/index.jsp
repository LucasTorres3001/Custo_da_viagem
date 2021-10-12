<%@page import="calculo.chegada.Space"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <main>
            <header>
                <h1>Custo da viagem</h1>
            </header>
            <center>
                <section>
                    <form action="indexII.jsp" method="POST" name="formulary" id="Form" target="Ponto_de_chegada">
                        <fieldset>
                            <legend>Viagem</legend>
                            <p>
                                <label for="InitialSpace" title="Ponto de partida">Digite o ponto de partida do veículo:</label>
                                <input type="text" name="So" id="InitialSpace" size="8" maxlength="8" placeholder="m" title="Ponto de partida" required="">
                                m
                            </p>
                            <p>
                                <label for="InitialSpeed" title="Velocidade inicial">Digite a velocidade inicial do veículo:</label>
                                <input type="text" name="Vo" id="InitialSpeed" size="8" maxlength="8" placeholder="m/s" title="Velocidade inicial" required="">
                                m/s
                            </p>
                            <p>
                                <label for="Acceleration" title="Aceleração">Digite a aceleração do veículo:</label>
                                <input type="text" name="a" id="Acceleration" size="8" maxlength="8" placeholder="m/s²" title="Aceleração" required="">
                                m/s<sup>2</sup>
                            </p>
                            <p>
                                <label for="Time" title="Tempo">Digite o tempo de viagem:</label>
                                <input type="text" name="t" id="Time" size="8" maxlength="8" placeholder="Tempo" title="Tempo" required="">
                                s
                            </p>
                        </fieldset>
                        <br>
                        <button type="submit" name="Click" id="click" title="Calcular" value="Ponto de chegada">Ver o ponto de chegada</button>
                    </form>
                    <br>
                    <iframe name="Ponto_de_chegada" id="fim" height="144" width="676" title="Ponto de chegada"></iframe>
                </section>
                <footer>
                    <%
                    out.print(Space.dateHourAndAuthor());
                    %>
                </footer>
            </center>
        </main>
    </body>
</html>
