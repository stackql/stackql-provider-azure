--- 
title: vw_diagnostics_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_diagnostics_packages
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_diagnostics_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_diagnostics_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_diagnostics_packages" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.reason') as "reason",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
diagnosticsPackageName
FROM azure.mobile_network.diagnostics_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND packetCoreControlPlaneName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.reason') as "reason",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
diagnosticsPackageName
FROM azure.mobile_network.diagnostics_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND packetCoreControlPlaneName = 'replace-me';
```

</TabItem>
</Tabs>
