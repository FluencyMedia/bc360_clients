connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"
include: "arch_client_orgs.view.lkml"
include: "arch_client_orgs_admin.view.lkml"

label: "BC360 - Client Management"

persist_with: dg_bc360_clients

explore: arch_client_orgs {
  label: "Client Architecture"
}

explore: arch_client_orgs_admin {
  label: "Client Architecture [ADMIN]"
}
