--- 
title: vw_managed_ccfs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_ccfs
  - confidential_ledger
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

Creates, updates, deletes, gets or lists a <code>vw_managed_ccfs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_ccfs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.confidential_ledger.vw_managed_ccfs" /></td></tr>
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
JSON_EXTRACT(properties, '$.appName') as "app_name",
JSON_EXTRACT(properties, '$.appUri') as "app_uri",
JSON_EXTRACT(properties, '$.identityServiceUri') as "identity_service_uri",
JSON_EXTRACT(properties, '$.memberIdentityCertificates') as "member_identity_certificates",
JSON_EXTRACT(properties, '$.deploymentType') as "deployment_type",
JSON_EXTRACT(properties, '$.runningState') as "running_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
subscriptionId,
resourceGroupName,
appName
FROM azure.confidential_ledger.managed_ccfs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.appName') as "app_name",
json_extract_path_text(properties, '$.appUri') as "app_uri",
json_extract_path_text(properties, '$.identityServiceUri') as "identity_service_uri",
json_extract_path_text(properties, '$.memberIdentityCertificates') as "member_identity_certificates",
json_extract_path_text(properties, '$.deploymentType') as "deployment_type",
json_extract_path_text(properties, '$.runningState') as "running_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
subscriptionId,
resourceGroupName,
appName
FROM azure.confidential_ledger.managed_ccfs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
