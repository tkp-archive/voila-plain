{%- extends 'base.tpl' -%}
{% from 'mathjax.tpl' import mathjax %}

{%- block html_head_css -%}

{% for css in resources.inlining.css -%}
    <style type="text/css">
    {{ css }}
    </style>
{% endfor %}

<style type="text/css">

/* Overrides of notebook CSS for static HTML export */
body {
  overflow: visible;
  padding: 8px;
}

div#notebook {
  overflow: auto;
  padding-right:5px;
  border: none;
  padding: 0px;
  resize:both;
  min-height: 0px;
  height:100%;
}

::-webkit-scrollbar {
    width: 5px;
    height:5px;
    background: transparent;
}
::-webkit-scrollbar-thumb {
    background: grey;
}

div#notebook-container{
  padding: 0px;
  -webkit-box-shadow: none;
  box-shadow:none;
}

div.output_subarea {
  max-width: 100%;
}

@media print {
  div.cell {
    display: block;
    page-break-inside: avoid;
  }
  div.output_wrapper {
    display: block;
    page-break-inside: avoid;
  }
  div.output {
    display: block;
    page-break-inside: avoid;
  }
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<!-- <link rel="stylesheet" href="custom.css"> -->

<!-- Loading mathjax macro -->
{{ mathjax() }}
{%- endblock html_head_css -%}

{% block body %}
<body>
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">
{{ super() }}
    </div>
  </div>
</body>
{%- endblock body %}

