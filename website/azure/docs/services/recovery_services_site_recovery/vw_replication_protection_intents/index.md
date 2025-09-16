--- 
title: vw_replication_protection_intents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_protection_intents
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_protection_intents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_protection_intents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_protection_intents" /></td></tr>
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
location as location,
type as type,
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.jobId') as "job_id",
JSON_EXTRACT(properties, '$.jobState') as "job_state",
JSON_EXTRACT(properties, '$.isActive') as "is_active",
JSON_EXTRACT(properties, '$.creationTimeUTC') as "creation_time_utc",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
intentObjectName
FROM azure.recovery_services_site_recovery.replication_protection_intents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.jobId') as "job_id",
json_extract_path_text(properties, '$.jobState') as "job_state",
json_extract_path_text(properties, '$.isActive') as "is_active",
json_extract_path_text(properties, '$.creationTimeUTC') as "creation_time_utc",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
intentObjectName
FROM azure.recovery_services_site_recovery.replication_protection_intents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
