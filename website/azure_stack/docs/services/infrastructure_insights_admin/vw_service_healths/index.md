--- 
title: vw_service_healths
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_service_healths
  - infrastructure_insights_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_service_healths</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_service_healths</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.infrastructure_insights_admin.vw_service_healths" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.serviceLocation') as "service_location",
JSON_EXTRACT(properties, '$.infraURI') as "infra_uri",
JSON_EXTRACT(properties, '$.alertSummary') as "alert_summary",
JSON_EXTRACT(properties, '$.healthState') as "health_state",
JSON_EXTRACT(properties, '$.namespace') as "namespace",
JSON_EXTRACT(properties, '$.registrationId') as "registration_id",
JSON_EXTRACT(properties, '$.routePrefix') as "route_prefix",
subscriptionId,
resourceGroupName,
location,
serviceHealth
FROM azure_stack.infrastructure_insights_admin.service_healths
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.serviceLocation') as "service_location",
json_extract_path_text(properties, '$.infraURI') as "infra_uri",
json_extract_path_text(properties, '$.alertSummary') as "alert_summary",
json_extract_path_text(properties, '$.healthState') as "health_state",
json_extract_path_text(properties, '$.namespace') as "namespace",
json_extract_path_text(properties, '$.registrationId') as "registration_id",
json_extract_path_text(properties, '$.routePrefix') as "route_prefix",
subscriptionId,
resourceGroupName,
location,
serviceHealth
FROM azure_stack.infrastructure_insights_admin.service_healths
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
