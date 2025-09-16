--- 
title: vw_topic_types
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_topic_types
  - event_grid
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_topic_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_topic_types</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_topic_types" /></td></tr>
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
JSON_EXTRACT(properties, '$.provider') as "provider",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.resourceRegionType') as "resource_region_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.supportedLocations') as "supported_locations",
JSON_EXTRACT(properties, '$.sourceResourceFormat') as "source_resource_format",
JSON_EXTRACT(properties, '$.supportedScopesForSource') as "supported_scopes_for_source",
JSON_EXTRACT(properties, '$.areRegionalAndGlobalSourcesSupported') as "are_regional_and_global_sources_supported",
JSON_EXTRACT(properties, '$.additionalEnforcedPermissions') as "additional_enforced_permissions",
topicTypeName
FROM azure.event_grid.topic_types
WHERE topicTypeName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provider') as "provider",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.resourceRegionType') as "resource_region_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.supportedLocations') as "supported_locations",
json_extract_path_text(properties, '$.sourceResourceFormat') as "source_resource_format",
json_extract_path_text(properties, '$.supportedScopesForSource') as "supported_scopes_for_source",
json_extract_path_text(properties, '$.areRegionalAndGlobalSourcesSupported') as "are_regional_and_global_sources_supported",
json_extract_path_text(properties, '$.additionalEnforcedPermissions') as "additional_enforced_permissions",
topicTypeName
FROM azure.event_grid.topic_types
WHERE topicTypeName = 'replace-me';
```

</TabItem>
</Tabs>
