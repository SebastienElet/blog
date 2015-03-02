{% extends type + '/layout.tpl' %}

{% block body %}
{{ content | safe }}{% if not metadata.childs %}
<p>Pas de posts actuellement !</p>
{% else %}
<section class="main-articles">
  {% for post in metadata.childs %}
  <article class="main-articles__article">
    <p><strong>
      <a href="{{post.path}}{{post.name}}.html"
        title="{{post.title}}">
        {{post.title}}
      </a>
    </strong></p>
    <p>{{post.description}}</p>
  </article>
  {% endfor %}
</section>
{% endif %}
{% endblock %}
