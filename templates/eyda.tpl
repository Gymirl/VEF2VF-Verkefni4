{% extends "base.html" %}

{% block title %}
    vefverslun-Körfu eytt
{% endblock %}

{% block refresh %}
    <meta http-equiv="refresh"content="1; url={{ url_for('index') }}">
{% endblock %}

{% block content %}
    <h1>körfu hefur verið eytt...</h1>
{% endblock %}