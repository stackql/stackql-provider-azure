--- 
title: vw_interactions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_interactions
  - customer_insights
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_interactions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_interactions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_interactions" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
id as id,
name as name,
type as type,
JSON_EXTRACT(properties, '$.apiEntitySetName') as "api_entity_set_name",
JSON_EXTRACT(properties, '$.entityType') as "entity_type",
JSON_EXTRACT(properties, '$.fields') as "fields",
JSON_EXTRACT(properties, '$.instancesCount') as "instances_count",
JSON_EXTRACT(properties, '$.lastChangedUtc') as "last_changed_utc",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.schemaItemTypeLink') as "schema_item_type_link",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.timestampFieldName') as "timestamp_field_name",
JSON_EXTRACT(properties, '$.typeName') as "type_name",
JSON_EXTRACT(properties, '$.idPropertyNames') as "id_property_names",
JSON_EXTRACT(properties, '$.participantProfiles') as "participant_profiles",
JSON_EXTRACT(properties, '$.primaryParticipantProfilePropertyName') as "primary_participant_profile_property_name",
JSON_EXTRACT(properties, '$.dataSourcePrecedenceRules') as "data_source_precedence_rules",
JSON_EXTRACT(properties, '$.defaultDataSource') as "default_data_source",
JSON_EXTRACT(properties, '$.isActivity') as "is_activity",
subscriptionId,
resourceGroupName,
hubName,
interactionName
FROM azure_extras.customer_insights.interactions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.apiEntitySetName') as "api_entity_set_name",
json_extract_path_text(properties, '$.entityType') as "entity_type",
json_extract_path_text(properties, '$.fields') as "fields",
json_extract_path_text(properties, '$.instancesCount') as "instances_count",
json_extract_path_text(properties, '$.lastChangedUtc') as "last_changed_utc",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.schemaItemTypeLink') as "schema_item_type_link",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.timestampFieldName') as "timestamp_field_name",
json_extract_path_text(properties, '$.typeName') as "type_name",
json_extract_path_text(properties, '$.idPropertyNames') as "id_property_names",
json_extract_path_text(properties, '$.participantProfiles') as "participant_profiles",
json_extract_path_text(properties, '$.primaryParticipantProfilePropertyName') as "primary_participant_profile_property_name",
json_extract_path_text(properties, '$.dataSourcePrecedenceRules') as "data_source_precedence_rules",
json_extract_path_text(properties, '$.defaultDataSource') as "default_data_source",
json_extract_path_text(properties, '$.isActivity') as "is_activity",
subscriptionId,
resourceGroupName,
hubName,
interactionName
FROM azure_extras.customer_insights.interactions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
