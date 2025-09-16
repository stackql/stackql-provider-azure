--- 
title: vw_open_ais
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_open_ais
  - elastic
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_open_ais</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_open_ais</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.elastic.vw_open_ais" /></td></tr>
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
JSON_EXTRACT(properties, '$.openAIResourceId') as "open_ai_resource_id",
JSON_EXTRACT(properties, '$.openAIResourceEndpoint') as "open_ai_resource_endpoint",
JSON_EXTRACT(properties, '$.openAIConnectorId') as "open_ai_connector_id",
JSON_EXTRACT(properties, '$.key') as "key",
JSON_EXTRACT(properties, '$.lastRefreshAt') as "last_refresh_at",
subscriptionId,
resourceGroupName,
monitorName,
integrationName
FROM azure_isv.elastic.open_ais
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.openAIResourceId') as "open_ai_resource_id",
json_extract_path_text(properties, '$.openAIResourceEndpoint') as "open_ai_resource_endpoint",
json_extract_path_text(properties, '$.openAIConnectorId') as "open_ai_connector_id",
json_extract_path_text(properties, '$.key') as "key",
json_extract_path_text(properties, '$.lastRefreshAt') as "last_refresh_at",
subscriptionId,
resourceGroupName,
monitorName,
integrationName
FROM azure_isv.elastic.open_ais
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
</Tabs>
