{% extends "base.html" %}
{% block title %} Yfirlit pöntunar {% endblock %}


{% block content %}
    <h3>{{self.title()}}</h3>
    <div>
        <table>
            <tr>
                <td>Nafn:</td><th>{{name}}</th>
            </tr>
            <tr>
                <td>Tölvupóstfang:</td><th>{{email}}</th>
            </tr>
            <tr>
                <td>Simanumer</td><th>{{phone}}</th>
            </tr>
            <tr>
                <th>Heildarverð</th><td>{{price}}</td>
            </tr>
            <tr>
                <td><a href="/karfa" class="butt">Aftur í körfuna</a></td>
                <td><a href="/logout" class="butt">Útskráning</a></td>
            </tr>
        </table>
    </div>