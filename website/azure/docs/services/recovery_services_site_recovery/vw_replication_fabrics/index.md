--- 
title: vw_replication_fabrics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_fabrics
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

Creates, updates, deletes, gets or lists a <code>vw_replication_fabrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_fabrics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_fabrics" /></td></tr>
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
JSON_EXTRACT(properties, '$.encryptionDetails') as "encryption_details",
JSON_EXTRACT(properties, '$.rolloverEncryptionDetails') as "rollover_encryption_details",
JSON_EXTRACT(properties, '$.internalIdentifier') as "internal_identifier",
JSON_EXTRACT(properties, '$.bcdrState') as "bcdr_state",
JSON_EXTRACT(properties, '$.customDetails') as "custom_details",
JSON_EXTRACT(properties, '$.healthErrorDetails') as "health_error_details",
JSON_EXTRACT(properties, '$.health') as "health",
subscriptionId,
resourceGroupName,
resourceName,
fabricName
FROM azure.recovery_services_site_recovery.replication_fabrics
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
json_extract_path_text(properties, '$.encryptionDetails') as "encryption_details",
json_extract_path_text(properties, '$.rolloverEncryptionDetails') as "rollover_encryption_details",
json_extract_path_text(properties, '$.internalIdentifier') as "internal_identifier",
json_extract_path_text(properties, '$.bcdrState') as "bcdr_state",
json_extract_path_text(properties, '$.customDetails') as "custom_details",
json_extract_path_text(properties, '$.healthErrorDetails') as "health_error_details",
json_extract_path_text(properties, '$.health') as "health",
subscriptionId,
resourceGroupName,
resourceName,
fabricName
FROM azure.recovery_services_site_recovery.replication_fabrics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
