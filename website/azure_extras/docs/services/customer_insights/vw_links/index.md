--- 
title: vw_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_links
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

Creates, updates, deletes, gets or lists a <code>vw_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_links</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_links" /></td></tr>
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
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.linkName') as "link_name",
JSON_EXTRACT(properties, '$.sourceEntityType') as "source_entity_type",
JSON_EXTRACT(properties, '$.targetEntityType') as "target_entity_type",
JSON_EXTRACT(properties, '$.sourceEntityTypeName') as "source_entity_type_name",
JSON_EXTRACT(properties, '$.targetEntityTypeName') as "target_entity_type_name",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.mappings') as "mappings",
JSON_EXTRACT(properties, '$.participantPropertyReferences') as "participant_property_references",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.referenceOnly') as "reference_only",
JSON_EXTRACT(properties, '$.operationType') as "operation_type",
subscriptionId,
resourceGroupName,
hubName,
linkName
FROM azure_extras.customer_insights.links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.linkName') as "link_name",
json_extract_path_text(properties, '$.sourceEntityType') as "source_entity_type",
json_extract_path_text(properties, '$.targetEntityType') as "target_entity_type",
json_extract_path_text(properties, '$.sourceEntityTypeName') as "source_entity_type_name",
json_extract_path_text(properties, '$.targetEntityTypeName') as "target_entity_type_name",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.mappings') as "mappings",
json_extract_path_text(properties, '$.participantPropertyReferences') as "participant_property_references",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.referenceOnly') as "reference_only",
json_extract_path_text(properties, '$.operationType') as "operation_type",
subscriptionId,
resourceGroupName,
hubName,
linkName
FROM azure_extras.customer_insights.links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
