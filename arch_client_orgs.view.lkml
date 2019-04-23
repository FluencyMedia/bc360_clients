view: arch_client_orgs {
  view_label: "Client Architecture"

  derived_table: {
     datagroup_trigger: dg_bc360_clients

    sql:  SELECT
            ac.row_num,
            ac.client_id,
            ac.client_uid,
            ac.organization_id,
            ac.organization_uid,
            ac.client,
            ac.organization,
            ac.org_short,
            ac.last_updated
         FROM bc360_arch_clients.arch_client_orgs ac;;
  }

  ##########  DIMENSIONS  ##########

  dimension: client {
    view_label: "1. Client/Account"
    label: "Client Account"
    description: "Primary BC360 Client Account"

    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: organization {
    view_label: "1. Client/Account"
    label: "Client Organization"
    description: "Internal Organization Within BC360 Client Account"

    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: org_short {
    view_label: "1. Client/Account"
    label: "Client Org"
    description: "Short Name for Internal Organization"

    type: string
    sql: ${TABLE}.org_short ;;
  }



  dimension: client_id {
    hidden: yes

    type: string

    sql: ${TABLE}.client_id ;;
  }

  dimension: client_uid {
    hidden: yes

    type: string

    sql: ${TABLE}.client_uid ;;
  }

  dimension: organization_id {
    hidden: yes

    type: string

    sql: ${TABLE}.organization_id ;;
  }

  dimension: organization_uid {
    primary_key: yes
    hidden: yes

    type: string

    sql: ${TABLE}.organization_uid ;;
  }
}
