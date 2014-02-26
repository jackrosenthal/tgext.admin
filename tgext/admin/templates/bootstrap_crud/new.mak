<%inherit file="local:templates.master"/>

<%def name="title()">
${tmpl_context.title} - ${model}
</%def>

  <div class="row">
    <div class="col-md-2">
      % if hasattr(tmpl_context, 'menu_items'):
        <ul class="nav crud-sidebar">
          % for lower, item in sorted(tmpl_context.menu_items.items()):
            <li class="${item==model and 'active' or ''}">
                <a href="${tmpl_context.crud_helpers.make_link(lower)}">${item}</a>
            </li>
          % endfor
        </ul>
      % endif
    </div>

    <div class="col-md-10">
      <h1 class="page-header">New ${model}</h1>
      ${tmpl_context.widget(value=value, action='./') | n}
    </div>
  </div>