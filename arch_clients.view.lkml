view: arch_clients {
  view_label: "Client Architecture"

  derived_table: {
    # datagroup_trigger: dg_bc360_clients

    sql:  SELECT
            ROW_NUMBER() OVER () row_num,
            CAST(ac.client_id AS INT64) client_id,
            CAST(ac.client_uid AS INT64) client_uid,
            CAST(ac.organization_id AS INT64) organization_id,
            CAST(ac.organization_uid AS INT64) organization_uid,
            ac.client,
            ac.organization,
            ac.org_short
         FROM arch_clients.arch_client_orgs ac;;
  }

  ##########  DIMENSIONS  ##########

  dimension: row_num {
    view_label: "Z - Metadata"
    label: "Row Index"

    primary_key: yes
    hidden: yes

    type: number
    sql: ${TABLE}.row_num ;;
  }

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

    type: number

    sql: ${TABLE}.client_id ;;
  }

  dimension: client_uid {
    hidden: yes

    type: number

    sql: ${TABLE}.client_uid ;;
  }

  dimension: organization_id {
    hidden: yes

    type: number

    sql: ${TABLE}.organization_id ;;
  }

  dimension: organization_uid {
    hidden: yes

    type: number

    sql: ${TABLE}.organization_uid ;;
  }
}
