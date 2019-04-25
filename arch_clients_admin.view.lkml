include: "arch_clients.view.lkml"

view: arch_clients_admin {
  label: "BC360 - Client Architecture [ADMIN]"
  extends: [arch_clients]

  ##########  METADATA  ##########

  dimension: row_num {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Client ID [Arch_Client_Orgs]"
    description: "ID for Primary BC360 Client Account"

    hidden: no

    type: number

    sql: ${TABLE}.row_num ;;
  }

  dimension: client_id {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Client ID [Arch_Client_Orgs]"
    description: "ID for Primary BC360 Client Account"

    hidden: no

    type: string

    sql: ${TABLE}.client_id ;;
  }

  dimension: client_uid {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Client UID [Arch_Client_Orgs]"
    description: "Hashed UID for Primary BC360 Client Account"

    hidden: no

    type: string

    sql: ${TABLE}.client_uid ;;
  }

  dimension: organization_id {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Organization ID [Arch_Client_Orgs]"
    description: "ID for Organization Within MP360 Client Account"

    hidden: no

    type: string

    sql: ${TABLE}.organization_id ;;
  }

  dimension: organization_uid {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Organization UID [Arch_Client_Orgs]"
    description: "Hashed UID for Organization Within MP360 Client Account"

    primary_key: yes
    hidden: no

    type: string

    sql: ${TABLE}.organization_uid ;;
  }


  ##########  MEASURES  ##########
  measure: num_clients {
    view_label: "1. Client/Account"
    group_label: "Z - Category Counts"
    label: "# Clients"
    description: "Number of BC360 Client Accounts"
    type: count_distinct
    value_format_name: decimal_0

    sql: ${client_id} ;;
  }

  measure: num_orgs {
    view_label: "1. Client/Account"
    group_label: "Z - Category Counts"
    label: "# Organizations"
    description: "Number of BC360 Client Organizations"
    type: count_distinct
    value_format_name: decimal_0

    sql: ${organization_id} ;;
  }
}
