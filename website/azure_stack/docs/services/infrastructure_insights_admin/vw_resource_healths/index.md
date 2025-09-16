--- 
title: vw_resource_healths
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_resource_healths
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

Creates, updates, deletes, gets or lists a <code>vw_resource_healths</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_resource_healths</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.infrastructure_insights_admin.vw_resource_healths" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceLocation') as "resource_location",
JSON_EXTRACT(properties, '$.resourceName') as "resource_name",
JSON_EXTRACT(properties, '$.resourceDisplayName') as "resource_display_name",
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.resourceURI') as "resource_uri",
JSON_EXTRACT(properties, '$.rpRegistrationId') as "rp_registration_id",
JSON_EXTRACT(properties, '$.usageMetrics') as "usage_metrics",
JSON_EXTRACT(properties, '$.alertSummary') as "alert_summary",
JSON_EXTRACT(properties, '$.healthState') as "health_state",
JSON_EXTRACT(properties, '$.namespace') as "namespace",
JSON_EXTRACT(properties, '$.registrationId') as "registration_id",
JSON_EXTRACT(properties, '$.routePrefix') as "route_prefix",
subscriptionId,
resourceGroupName,
location,
serviceRegistrationId,
resourceRegistrationId
FROM azure_stack.infrastructure_insights_admin.resource_healths
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me' AND serviceRegistrationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.resourceLocation') as "resource_location",
json_extract_path_text(properties, '$.resourceName') as "resource_name",
json_extract_path_text(properties, '$.resourceDisplayName') as "resource_display_name",
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.resourceURI') as "resource_uri",
json_extract_path_text(properties, '$.rpRegistrationId') as "rp_registration_id",
json_extract_path_text(properties, '$.usageMetrics') as "usage_metrics",
json_extract_path_text(properties, '$.alertSummary') as "alert_summary",
json_extract_path_text(properties, '$.healthState') as "health_state",
json_extract_path_text(properties, '$.namespace') as "namespace",
json_extract_path_text(properties, '$.registrationId') as "registration_id",
json_extract_path_text(properties, '$.routePrefix') as "route_prefix",
subscriptionId,
resourceGroupName,
location,
serviceRegistrationId,
resourceRegistrationId
FROM azure_stack.infrastructure_insights_admin.resource_healths
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me' AND serviceRegistrationId = 'replace-me';
```

</TabItem>
</Tabs>
