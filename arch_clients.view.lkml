include: "arch_clients_admin.view.lkml"

view: arch_clients {
  view_label: "BC360 - User Views"
  label: "Client Architecture"

  extends: [arch_clients_admin]

  dimension: client_id { hidden: yes }
  dimension: organization_id {  hidden: yes
                                primary_key: yes }
  dimension: client_uid { hidden: yes }
  dimension: organization_uid { hidden: yes }

  measure: num_clients { hidden: yes }
  measure: num_orgs { hidden: yes }
}
