--- 
title: vw_blob_containers_immutability_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_blob_containers_immutability_policies
  - storage
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

Creates, updates, deletes, gets or lists a <code>vw_blob_containers_immutability_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_blob_containers_immutability_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_blob_containers_immutability_policies" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.immutabilityPeriodSinceCreationInDays') as "immutability_period_since_creation_in_days",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.allowProtectedAppendWrites') as "allow_protected_append_writes",
JSON_EXTRACT(properties, '$.allowProtectedAppendWritesAll') as "allow_protected_append_writes_all",
subscriptionId,
resourceGroupName,
accountName,
containerName,
immutabilityPolicyName
FROM azure.storage.blob_containers_immutability_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND containerName = 'replace-me' AND immutabilityPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.immutabilityPeriodSinceCreationInDays') as "immutability_period_since_creation_in_days",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.allowProtectedAppendWrites') as "allow_protected_append_writes",
json_extract_path_text(properties, '$.allowProtectedAppendWritesAll') as "allow_protected_append_writes_all",
subscriptionId,
resourceGroupName,
accountName,
containerName,
immutabilityPolicyName
FROM azure.storage.blob_containers_immutability_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND containerName = 'replace-me' AND immutabilityPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
