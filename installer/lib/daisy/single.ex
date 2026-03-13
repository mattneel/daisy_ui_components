defmodule Daisy.New.Single do
  @moduledoc false
  use Daisy.New.Generator
  alias Daisy.New.Project

  @all_components [
    "components/js_helpers.ex": "lib/daisy_ui_components/js_helpers.ex",
    "components/utils.ex": "lib/daisy_ui_components/utils.ex",
    "daisy_ui_components.ex": "lib/daisy_ui_components.ex",
    "components/accordion.ex": "lib/daisy_ui_components/accordion.ex",
    "components/alert.ex": "lib/daisy_ui_components/alert.ex",
    "components/artboard.ex": "lib/daisy_ui_components/artboard.ex",
    "components/avatar.ex": "lib/daisy_ui_components/avatar.ex",
    "components/back.ex": "lib/daisy_ui_components/back.ex",
    "components/badge.ex": "lib/daisy_ui_components/badge.ex",
    "components/browser.ex": "lib/daisy_ui_components/browser.ex",
    "components/breadcrumbs.ex": "lib/daisy_ui_components/breadcrumbs.ex",
    "components/button.ex": "lib/daisy_ui_components/button.ex",
    "components/calendar.ex": "lib/daisy_ui_components/calendar.ex",
    "components/card.ex": "lib/daisy_ui_components/card.ex",
    "components/carousel.ex": "lib/daisy_ui_components/carousel.ex",
    "components/chat.ex": "lib/daisy_ui_components/chat.ex",
    "components/checkbox.ex": "lib/daisy_ui_components/checkbox.ex",
    "components/code.ex": "lib/daisy_ui_components/code.ex",
    "components/collapse.ex": "lib/daisy_ui_components/collapse.ex",
    "components/countdown.ex": "lib/daisy_ui_components/countdown.ex",
    "components/diff.ex": "lib/daisy_ui_components/diff.ex",
    "components/divider.ex": "lib/daisy_ui_components/divider.ex",
    "components/dock.ex": "lib/daisy_ui_components/dock.ex",
    "components/drawer.ex": "lib/daisy_ui_components/drawer.ex",
    "components/dropdown.ex": "lib/daisy_ui_components/dropdown.ex",
    "components/fab.ex": "lib/daisy_ui_components/fab.ex",
    "components/fieldset.ex": "lib/daisy_ui_components/fieldset.ex",
    "components/file_input.ex": "lib/daisy_ui_components/file_input.ex",
    "components/filter.ex": "lib/daisy_ui_components/filter.ex",
    "components/flash.ex": "lib/daisy_ui_components/flash.ex",
    "components/footer.ex": "lib/daisy_ui_components/footer.ex",
    "components/form.ex": "lib/daisy_ui_components/form.ex",
    "components/header.ex": "lib/daisy_ui_components/header.ex",
    "components/hero.ex": "lib/daisy_ui_components/hero.ex",
    "components/hover_3d.ex": "lib/daisy_ui_components/hover_3d.ex",
    "components/hover_gallery.ex": "lib/daisy_ui_components/hover_gallery.ex",
    "components/icon.ex": "lib/daisy_ui_components/icon.ex",
    "components/indicator.ex": "lib/daisy_ui_components/indicator.ex",
    "components/input.ex": "lib/daisy_ui_components/input.ex",
    "components/join.ex": "lib/daisy_ui_components/join.ex",
    "components/kbd.ex": "lib/daisy_ui_components/kbd.ex",
    "components/label.ex": "lib/daisy_ui_components/label.ex",
    "components/link.ex": "lib/daisy_ui_components/link.ex",
    "components/list.ex": "lib/daisy_ui_components/list.ex",
    "components/loading.ex": "lib/daisy_ui_components/loading.ex",
    "components/mask.ex": "lib/daisy_ui_components/mask.ex",
    "components/menu.ex": "lib/daisy_ui_components/menu.ex",
    "components/modal.ex": "lib/daisy_ui_components/modal.ex",
    "components/navbar.ex": "lib/daisy_ui_components/navbar.ex",
    "components/pagination.ex": "lib/daisy_ui_components/pagination.ex",
    "components/phone.ex": "lib/daisy_ui_components/phone.ex",
    "components/progress.ex": "lib/daisy_ui_components/progress.ex",
    "components/radial_progress.ex": "lib/daisy_ui_components/radial_progress.ex",
    "components/radio.ex": "lib/daisy_ui_components/radio.ex",
    "components/range.ex": "lib/daisy_ui_components/range.ex",
    "components/rating.ex": "lib/daisy_ui_components/rating.ex",
    "components/select.ex": "lib/daisy_ui_components/select.ex",
    "components/sidebar.ex": "lib/daisy_ui_components/sidebar.ex",
    "components/skeleton.ex": "lib/daisy_ui_components/skeleton.ex",
    "components/stack.ex": "lib/daisy_ui_components/stack.ex",
    "components/stat.ex": "lib/daisy_ui_components/stat.ex",
    "components/status.ex": "lib/daisy_ui_components/status.ex",
    "components/swap.ex": "lib/daisy_ui_components/swap.ex",
    "components/table.ex": "lib/daisy_ui_components/table.ex",
    "components/tabs.ex": "lib/daisy_ui_components/tabs.ex",
    "components/text_input.ex": "lib/daisy_ui_components/text_input.ex",
    "components/text_rotate.ex": "lib/daisy_ui_components/text_rotate.ex",
    "components/textarea.ex": "lib/daisy_ui_components/textarea.ex",
    "components/theme_controller.ex": "lib/daisy_ui_components/theme_controller.ex",
    "components/timeline.ex": "lib/daisy_ui_components/timeline.ex",
    "components/toggle.ex": "lib/daisy_ui_components/toggle.ex",
    "components/tooltip.ex": "lib/daisy_ui_components/tooltip.ex",
    "components/window.ex": "lib/daisy_ui_components/window.ex",
    "components/steps.ex": "lib/daisy_ui_components/steps.ex",
    "components/toast.ex": "lib/daisy_ui_components/toast.ex"
  ]

  template(:core, [
    {:eex, :web,
     "daisy_ui_components.ex": "lib/:lib_web_name/daisy_ui_components.ex",
     "components/utils.ex": "lib/:lib_web_name/daisy_ui_components/utils.ex",
     "components/js_helpers.ex": "lib/:lib_web_name/daisy_ui_components/js_helpers.ex"}
  ])

  template(:accordion, [
    {:eex, :web, "components/accordion.ex": "lib/:lib_web_name/daisy_ui_components/accordion.ex"}
  ])

  template(:alert, [
    {:eex, :web, "components/alert.ex": "lib/:lib_web_name/daisy_ui_components/alert.ex"}
  ])

  template(:artboard, [
    {:eex, :web, "components/artboard.ex": "lib/:lib_web_name/daisy_ui_components/artboard.ex"}
  ])

  template(:avatar, [
    {:eex, :web, "components/avatar.ex": "lib/:lib_web_name/daisy_ui_components/avatar.ex"}
  ])

  template(:back, [
    {:eex, :web, "components/back.ex": "lib/:lib_web_name/daisy_ui_components/back.ex"}
  ])

  template(:badge, [
    {:eex, :web, "components/badge.ex": "lib/:lib_web_name/daisy_ui_components/badge.ex"}
  ])

  template(:browser, [
    {:eex, :web, "components/browser.ex": "lib/:lib_web_name/daisy_ui_components/browser.ex"}
  ])

  template(:breadcrumbs, [
    {:eex, :web,
     "components/breadcrumbs.ex": "lib/:lib_web_name/daisy_ui_components/breadcrumbs.ex"}
  ])

  template(:button, [
    {:eex, :web, "components/button.ex": "lib/:lib_web_name/daisy_ui_components/button.ex"}
  ])

  template(:calendar, [
    {:eex, :web, "components/calendar.ex": "lib/:lib_web_name/daisy_ui_components/calendar.ex"}
  ])

  template(:card, [
    {:eex, :web, "components/card.ex": "lib/:lib_web_name/daisy_ui_components/card.ex"}
  ])

  template(:carousel, [
    {:eex, :web, "components/carousel.ex": "lib/:lib_web_name/daisy_ui_components/carousel.ex"}
  ])

  template(:chat, [
    {:eex, :web, "components/chat.ex": "lib/:lib_web_name/daisy_ui_components/chat.ex"}
  ])

  template(:checkbox, [
    {:eex, :web, "components/checkbox.ex": "lib/:lib_web_name/daisy_ui_components/checkbox.ex"}
  ])

  template(:code, [
    {:eex, :web, "components/code.ex": "lib/:lib_web_name/daisy_ui_components/code.ex"}
  ])

  template(:collapse, [
    {:eex, :web, "components/collapse.ex": "lib/:lib_web_name/daisy_ui_components/collapse.ex"}
  ])

  template(:countdown, [
    {:eex, :web, "components/countdown.ex": "lib/:lib_web_name/daisy_ui_components/countdown.ex"}
  ])

  template(:diff, [
    {:eex, :web, "components/diff.ex": "lib/:lib_web_name/daisy_ui_components/diff.ex"}
  ])

  template(:divider, [
    {:eex, :web, "components/divider.ex": "lib/:lib_web_name/daisy_ui_components/divider.ex"}
  ])

  template(:dock, [
    {:eex, :web, "components/dock.ex": "lib/:lib_web_name/daisy_ui_components/dock.ex"}
  ])

  template(:drawer, [
    {:eex, :web, "components/drawer.ex": "lib/:lib_web_name/daisy_ui_components/drawer.ex"}
  ])

  template(:dropdown, [
    {:eex, :web, "components/dropdown.ex": "lib/:lib_web_name/daisy_ui_components/dropdown.ex"}
  ])

  template(:fab, [
    {:eex, :web, "components/fab.ex": "lib/:lib_web_name/daisy_ui_components/fab.ex"}
  ])

  template(:fieldset, [
    {:eex, :web, "components/fieldset.ex": "lib/:lib_web_name/daisy_ui_components/fieldset.ex"}
  ])

  template(:file_input, [
    {:eex, :web,
     "components/file_input.ex": "lib/:lib_web_name/daisy_ui_components/file_input.ex"}
  ])

  template(:filter, [
    {:eex, :web, "components/filter.ex": "lib/:lib_web_name/daisy_ui_components/filter.ex"}
  ])

  template(:flash, [
    {:eex, :web, "components/flash.ex": "lib/:lib_web_name/daisy_ui_components/flash.ex"}
  ])

  template(:footer, [
    {:eex, :web, "components/footer.ex": "lib/:lib_web_name/daisy_ui_components/footer.ex"}
  ])

  template(:form, [
    {:eex, :web, "components/form.ex": "lib/:lib_web_name/daisy_ui_components/form.ex"}
  ])

  template(:header, [
    {:eex, :web, "components/header.ex": "lib/:lib_web_name/daisy_ui_components/header.ex"}
  ])

  template(:hero, [
    {:eex, :web, "components/hero.ex": "lib/:lib_web_name/daisy_ui_components/hero.ex"}
  ])

  template(:hover_3d, [
    {:eex, :web, "components/hover_3d.ex": "lib/:lib_web_name/daisy_ui_components/hover_3d.ex"}
  ])

  template(:hover_gallery, [
    {:eex, :web,
     "components/hover_gallery.ex": "lib/:lib_web_name/daisy_ui_components/hover_gallery.ex"}
  ])

  template(:icon, [
    {:eex, :web, "components/icon.ex": "lib/:lib_web_name/daisy_ui_components/icon.ex"}
  ])

  template(:indicator, [
    {:eex, :web, "components/indicator.ex": "lib/:lib_web_name/daisy_ui_components/indicator.ex"}
  ])

  template(:input, [
    {:eex, :web, "components/input.ex": "lib/:lib_web_name/daisy_ui_components/input.ex"}
  ])

  template(:join, [
    {:eex, :web, "components/join.ex": "lib/:lib_web_name/daisy_ui_components/join.ex"}
  ])

  template(:kbd, [
    {:eex, :web, "components/kbd.ex": "lib/:lib_web_name/daisy_ui_components/kbd.ex"}
  ])

  template(:label, [
    {:eex, :web, "components/label.ex": "lib/:lib_web_name/daisy_ui_components/label.ex"}
  ])

  template(:link, [
    {:eex, :web, "components/link.ex": "lib/:lib_web_name/daisy_ui_components/link.ex"}
  ])

  template(:list, [
    {:eex, :web, "components/list.ex": "lib/:lib_web_name/daisy_ui_components/list.ex"}
  ])

  template(:loading, [
    {:eex, :web, "components/loading.ex": "lib/:lib_web_name/daisy_ui_components/loading.ex"}
  ])

  template(:mask, [
    {:eex, :web, "components/mask.ex": "lib/:lib_web_name/daisy_ui_components/mask.ex"}
  ])

  template(:menu, [
    {:eex, :web, "components/menu.ex": "lib/:lib_web_name/daisy_ui_components/menu.ex"}
  ])

  template(:modal, [
    {:eex, :web, "components/modal.ex": "lib/:lib_web_name/daisy_ui_components/modal.ex"}
  ])

  template(:navbar, [
    {:eex, :web, "components/navbar.ex": "lib/:lib_web_name/daisy_ui_components/navbar.ex"}
  ])

  template(:pagination, [
    {:eex, :web,
     "components/pagination.ex": "lib/:lib_web_name/daisy_ui_components/pagination.ex"}
  ])

  template(:phone, [
    {:eex, :web, "components/phone.ex": "lib/:lib_web_name/daisy_ui_components/phone.ex"}
  ])

  template(:progress, [
    {:eex, :web, "components/progress.ex": "lib/:lib_web_name/daisy_ui_components/progress.ex"}
  ])

  template(:radial_progress, [
    {:eex, :web,
     "components/radial_progress.ex": "lib/:lib_web_name/daisy_ui_components/radial_progress.ex"}
  ])

  template(:radio, [
    {:eex, :web, "components/radio.ex": "lib/:lib_web_name/daisy_ui_components/radio.ex"}
  ])

  template(:range, [
    {:eex, :web, "components/range.ex": "lib/:lib_web_name/daisy_ui_components/range.ex"}
  ])

  template(:rating, [
    {:eex, :web, "components/rating.ex": "lib/:lib_web_name/daisy_ui_components/rating.ex"}
  ])

  template(:select, [
    {:eex, :web, "components/select.ex": "lib/:lib_web_name/daisy_ui_components/select.ex"}
  ])

  template(:sidebar, [
    {:eex, :web, "components/sidebar.ex": "lib/:lib_web_name/daisy_ui_components/sidebar.ex"}
  ])

  template(:skeleton, [
    {:eex, :web, "components/skeleton.ex": "lib/:lib_web_name/daisy_ui_components/skeleton.ex"}
  ])

  template(:stack, [
    {:eex, :web, "components/stack.ex": "lib/:lib_web_name/daisy_ui_components/stack.ex"}
  ])

  template(:stat, [
    {:eex, :web, "components/stat.ex": "lib/:lib_web_name/daisy_ui_components/stat.ex"}
  ])

  template(:status, [
    {:eex, :web, "components/status.ex": "lib/:lib_web_name/daisy_ui_components/status.ex"}
  ])

  template(:swap, [
    {:eex, :web, "components/swap.ex": "lib/:lib_web_name/daisy_ui_components/swap.ex"}
  ])

  template(:table, [
    {:eex, :web, "components/table.ex": "lib/:lib_web_name/daisy_ui_components/table.ex"}
  ])

  template(:tabs, [
    {:eex, :web, "components/tabs.ex": "lib/:lib_web_name/daisy_ui_components/tabs.ex"}
  ])

  template(:text_input, [
    {:eex, :web,
     "components/text_input.ex": "lib/:lib_web_name/daisy_ui_components/text_input.ex"}
  ])

  template(:text_rotate, [
    {:eex, :web,
     "components/text_rotate.ex": "lib/:lib_web_name/daisy_ui_components/text_rotate.ex"}
  ])

  template(:textarea, [
    {:eex, :web, "components/textarea.ex": "lib/:lib_web_name/daisy_ui_components/textarea.ex"}
  ])

  template(:theme_controller, [
    {:eex, :web,
     "components/theme_controller.ex": "lib/:lib_web_name/daisy_ui_components/theme_controller.ex"}
  ])

  template(:timeline, [
    {:eex, :web, "components/timeline.ex": "lib/:lib_web_name/daisy_ui_components/timeline.ex"}
  ])

  template(:toggle, [
    {:eex, :web, "components/toggle.ex": "lib/:lib_web_name/daisy_ui_components/toggle.ex"}
  ])

  template(:tooltip, [
    {:eex, :web, "components/tooltip.ex": "lib/:lib_web_name/daisy_ui_components/tooltip.ex"}
  ])

  template(:window, [
    {:eex, :web, "components/window.ex": "lib/:lib_web_name/daisy_ui_components/window.ex"}
  ])

  template(:steps, [
    {:eex, :web, "components/steps.ex": "lib/:lib_web_name/daisy_ui_components/steps.ex"}
  ])

  template(:toast, [
    {:eex, :web, "components/toast.ex": "lib/:lib_web_name/daisy_ui_components/toast.ex"}
  ])

  template(:dev, [
    {:eex, :web, @all_components}
  ])

  def prepare_project(%Project{app: app, base_path: base_path} = project) when not is_nil(app) do
    %{project | in_umbrella?: false, project_path: base_path}
    |> put_app()
    |> put_root_app()
    |> put_web_app()
  end

  defp put_app(%Project{base_path: base_path} = project) do
    %{project | app_path: base_path}
  end

  defp put_root_app(%Project{app: app, opts: opts} = project) do
    %{
      project
      | root_app: app,
        root_mod: Module.concat([opts[:module] || Macro.camelize(app)])
    }
  end

  defp put_web_app(%Project{app: app} = project) do
    %{
      project
      | web_app: app,
        lib_web_name: "#{app}_web",
        web_namespace: Module.concat(["#{project.root_mod}Web"]),
        web_path: project.base_path
    }
  end

  def generate(%Project{} = project) do
    all_components = all_components()

    if Project.dev?(project) do
      component_bindings =
        all_components
        |> then(fn list -> ["jS_helpers" | list] end)
        |> Enum.sort()

      project = %{project | binding: [{:components, component_bindings} | project.binding]}
      copy_from(project, __MODULE__, :dev)
    else
      components = Keyword.get(project.opts, :components)

      components =
        if components == [] do
          all_components
        else
          check_components(components, all_components)
        end

      requested_components_with_deps =
        Enum.reduce(components, MapSet.new(["core"]), fn comp, acc ->
          MapSet.put(acc, comp)
          |> add_deps(comp)
        end)

      component_bindings =
        Enum.reduce(requested_components_with_deps, [], fn x, acc ->
          substitute_core(x, acc)
        end)
        |> Enum.sort()

      project = %{project | binding: [{:components, component_bindings} | project.binding]}

      requested_components_with_deps =
        Enum.map(requested_components_with_deps, fn comp -> String.to_atom(comp) end)

      Enum.each(requested_components_with_deps, fn component ->
        copy_from(project, __MODULE__, component)
      end)
    end

    project
  end

  defp substitute_core(x, acc) do
    if x == "core", do: ["jS_helpers" | acc], else: [x | acc]
  end

  defp check_components(components, all_components) do
    Enum.filter(components, fn comp ->
      ## Check if all are valid components
      comp in all_components
    end)
  end

  defp add_deps(set, "alert"), do: add_dep_component(set, "icon")

  defp add_deps(set, "back"), do: add_dep_component(set, "icon")

  defp add_deps(set, "breadcrumps"), do: add_dep_component(set, "icon")

  defp add_deps(set, "indicator"), do: add_dep_component(set, "badge")

  defp add_deps(set, "flash") do
    add_dep_component(set, "alert")
    |> add_dep_component("icon")
  end

  defp add_deps(set, "form") do
    add_dep_component(set, "fieldset")
    |> add_dep_component("icon")
    |> add_dep_component("input")
  end

  defp add_deps(set, "input") do
    add_dep_component(set, "checkbox")
    |> add_dep_component("dropdown")
    |> add_dep_component("file_input")
    |> add_dep_component("menu")
    |> add_dep_component("radio")
    |> add_dep_component("range")
    |> add_dep_component("select")
    |> add_dep_component("textarea")
    |> add_dep_component("text_input")
    |> add_dep_component("toggle")
  end

  defp add_deps(set, "pagination") do
    add_dep_component(set, "button")
    |> add_dep_component("join")
  end

  defp add_deps(set, "swap"), do: add_dep_component(set, "icon")

  defp add_deps(set, "toast"), do: add_dep_component(set, "alert")

  defp add_deps(set, "sidebar") do
    add_dep_component(set, "drawer")
    |> add_dep_component("icon")
    |> add_dep_component("menu")
  end

  defp add_deps(set, _), do: set

  defp add_dep_component(set, component) do
    MapSet.put(set, component)
    |> add_deps(component)
  end

  defp all_components() do
    Enum.map(@all_components, fn {_, value} ->
      String.split(value, "/") |> Enum.at(-1) |> String.replace(".ex", "")
    end)
    |> Enum.filter(fn x -> x not in ["daisy_ui_components", "utils", "js_helpers"] end)
  end
end
