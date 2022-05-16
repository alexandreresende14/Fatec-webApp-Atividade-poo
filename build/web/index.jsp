<%-- 
    Document   : index
    Created on : May 15, 2022, 5:38:57 PM
    Author     : Alexandre
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="demo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
    
    String ementaIBD = "Conceitos de Base de Dados";
    String ementaIES = "Conceitos, evolução e importância de arquitetura de software";
    String ementaILP0 = "Conceitos e evolução da tecnologia de orientação a objetos";
    String ementaILP5 = "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas";
    String ementaISO = "Apresentação de um sistema operacional específico utilizado em ambiente corporativo";
    String ementaTTG = "O Papel da ciência e da tecnologia. Tipos de conhecimento";
    
    Disciplina ibd = new Disciplina("IBD002", "Banco de Dados3", ementaIBD, "Terça", "15:00 as 18:30");
    Disciplina ies = new Disciplina("IES300", "Engenharia de Software 2", ementaIES, "Quinta", "15:00 as 18:30");
    Disciplina ilp0 = new Disciplina("ILP007", "Programação Orientada a Objeto", ementaILP0, "Segunda", "13:00 as 16:40");
    Disciplina ilp5 = new Disciplina("ILP512", "Linguagem de Programação", ementaILP5, "Sexta", "15:00 as 18:30");
    Disciplina iso = new Disciplina("ISO200", "Sistemas Operacionais 2", ementaISO, "Quarta", "15:00 as 18:30");
    Disciplina ttg = new Disciplina("TTG001", "Metodologia de Pesquisa", ementaTTG, "Segunda", "16;50 as 18:30");
    
    ArrayList<Disciplina> list = new ArrayList<>();
    list.add(ibd); list.add(ies); list.add(ilp0);
    list.add(ilp5); list.add(iso); list.add(ttg);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade 11 - WebApp</title>
    </head>
    <body>
        <h3><%= dtf.format(LocalDateTime.now())%></h3>
        <h2>Nome: Alexandre Santos Resende</h2>
        <h3>RA: 1290482022023</h3>
        <table border=''>
            <tr>
                <th>Sigla</th>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Dia da semana</th>
                <th>Horario</th>
            </tr>
            <%for(Disciplina p: list) {%>
            <tr>
                <td><%= p.getSigla() %></td>
                <td><%= p.getNome()%></td>
                <td><%= p.getEmenta()%></td>
                <td><%= p.getDiaSemana() %></td>
                <td><%= p.getHorario() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
