{%- extends 'base.tpl' -%}
{% from 'mathjax.tpl' import mathjax %}

{%- block html_head_css -%}
<link rel="stylesheet" type="text/css" href="{{resources.base_url}}voila/static/index.css"></link>

{% if resources.theme == 'dark' %}
    <link rel="stylesheet" type="text/css" href="{{resources.base_url}}voila/static/theme-dark.css"></link>
{% else %}
    <link rel="stylesheet" type="text/css" href="{{resources.base_url}}voila/static/theme-light.css"></link>
{% endif %}

{% for css in resources.inlining.css %}
    <style type="text/css">
    {{ css }}
    </style>
{% endfor %}

<style type="text/css">
body {
  overflow: visible;
  padding: 5px !important;
  padding-top: 0px !important;
  padding-bottom: 0px !important;
  height: 100vh;
}

::-webkit-scrollbar {
    width: 5px;
    height:5px;
    background: transparent;
}

::-webkit-scrollbar-thumb {
    background: grey;
}

a.anchor-link {
  display: none;
}

div.jp-Cell-inputWrapper,
div.jp-Cell {
  overflow: auto;
  border: none;
  padding: 0px;
}

div.jp-RenderedHTMLCommon, 
div.jp-RenderedText,
div.jp-RenderedMarkdown {
    padding: 0px;
}

div.jp-RenderedHTMLCommon > p, 
div.jp-RenderedText > p,
div.jp-RenderedMarkdown > p {
    margin-bottom: 5px;
}

</style>

{{ mathjax() }}
{%- endblock html_head_css -%}

{%- block body -%}
{% if resources.theme == 'dark' %}
<body class="jp-Notebook theme-dark" data-base-url="{{resources.base_url}}voila/">
{% else %}
<body class="jp-Notebook theme-light" data-base-url="{{resources.base_url}}voila/">
{% endif %}
{{ super() }}
</body>
{%- endblock body -%}

