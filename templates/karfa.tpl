{% extends "base.html" %}

{% block title %}
    Vefverslun-Innkaupakarfa
{% endblock %}

{% block content %}
    <div>
    {% if tom %}
        <h1 class="">Karfan er tóm</h1>
    {% else %}
    <h1 class=""> Vörur í körfu:</h1>
    <h3><a href="/eyda"> Eyða körfu!</a></h3>
    <h4></h4>
    <table>
        <tr>
            <th colspan="2">Smelltu á vöru til að eyða úr körfunni</th>
        </tr>
        <tr>
            <td>vara;</td>
            <td>verð</td>
        </tr>
    {% for i in k %}
        <tr>
            <td><a href="/eydavoru/{{i[0]}}">{{i[1]}}</a></td>
            <td><b> {{i[3]}} </b></td>
        </tr>
    {% endfor %}
        <tr>
            <td>Samtals:</td>
            <th>{{ samtals }}</th>
        </tr>
    </table>
    {% endif %}

    <form method="post" action="result" accept-charset="UTF-8">
        <h3>Viðskiptavinur</h3>
        <label>Nafn:
            <input type="text" name="nafn" required placeholder="Name">
        </label>
        <label>Tölvupóstfang
            <input type="email" name="email" required placeholder="e-mail">
        </label>
        <label>Símanumer:
            <input type="text" name="simi" required pattern="^(\354 )?\d{3}[ -]?\d{4}$" placeholder="phone">
        </label>
        <input type="hidden" name="samtals" value="{{ samtals }}">
        <input type="submit" value="Kaupa vörur">
    </form>
    </div>
{% endblock %}