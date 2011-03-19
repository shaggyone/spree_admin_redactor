class SpreeAdminRedactorHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_inside_head, :partial => 'admin/shared/redactor_include'
  insert_after :admin_tabs do
    %(<%= tab(:imperavi_assets)%>)
  end
end
