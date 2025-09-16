--- 
title: vw_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connectors
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

Creates, updates, deletes, gets or lists a <code>vw_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_connectors" /></td></tr>
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
JSON_EXTRACT(properties, '$.connectorId') as "connector_id",
JSON_EXTRACT(properties, '$.connectorName') as "connector_name",
JSON_EXTRACT(properties, '$.connectorType') as "connector_type",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.connectorProperties') as "connector_properties",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.isInternal') as "is_internal",
subscriptionId,
resourceGroupName,
hubName,
connectorName
FROM azure_extras.customer_insights.connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.connectorId') as "connector_id",
json_extract_path_text(properties, '$.connectorName') as "connector_name",
json_extract_path_text(properties, '$.connectorType') as "connector_type",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.connectorProperties') as "connector_properties",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.isInternal') as "is_internal",
subscriptionId,
resourceGroupName,
hubName,
connectorName
FROM azure_extras.customer_insights.connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
