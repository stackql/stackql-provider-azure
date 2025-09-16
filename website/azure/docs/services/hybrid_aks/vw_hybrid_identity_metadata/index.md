--- 
title: vw_hybrid_identity_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hybrid_identity_metadata
  - hybrid_aks
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

Creates, updates, deletes, gets or lists a <code>vw_hybrid_identity_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hybrid_identity_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_aks.vw_hybrid_identity_metadata" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.resourceUid') as "resource_uid",
JSON_EXTRACT(properties, '$.publicKey') as "public_key",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
connectedClusterResourceUri
FROM azure.hybrid_aks.hybrid_identity_metadata
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.resourceUid') as "resource_uid",
json_extract_path_text(properties, '$.publicKey') as "public_key",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
connectedClusterResourceUri
FROM azure.hybrid_aks.hybrid_identity_metadata
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
</Tabs>
