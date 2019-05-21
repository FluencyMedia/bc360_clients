connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"
include: "*.view.lkml"

label: "BC360 - Admin"

# persist_with: dg_bc360_clients

explore: arch_clients_admin {
  label: "Client Architecture [ADMIN]"
}

explore: arch_clients {
  label: "Client Architecture [MAIN]"
}
