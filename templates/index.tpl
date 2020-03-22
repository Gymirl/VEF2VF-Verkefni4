{% extends "base-karfa.html" %}

{% block title %}
    vörulistinn
{% endblock %}

{% block content %}
    <h1>vörulistinn</h1>
    <section class="rapper">
        {% for i in v %}
            <div class="vara">
                <h2>{{i[1]}}</h2>
                <img src="/static/{{i[2]}}">
                <h2>verð: <a href="/add/{{i[0]}}">{{i[3]}}</a></h2>
            </div>
        {% endfor %}
    </section>
{% endblock %}