--- 
title: vw_dev_ops_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dev_ops_policies
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_dev_ops_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dev_ops_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_dev_ops_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningStatusMessage') as "provisioning_status_message",
JSON_EXTRACT(properties, '$.provisioningStatusUpdateTimeUtc') as "provisioning_status_update_time_utc",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.webUrl') as "web_url",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.content') as "content",
subscriptionId,
resourceGroupName,
securityConnectorName,
policyName
FROM azure.security.dev_ops_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND securityConnectorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.provisioningStatusMessage') as "provisioning_status_message",
json_extract_path_text(properties, '$.provisioningStatusUpdateTimeUtc') as "provisioning_status_update_time_utc",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.webUrl') as "web_url",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.content') as "content",
subscriptionId,
resourceGroupName,
securityConnectorName,
policyName
FROM azure.security.dev_ops_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND securityConnectorName = 'replace-me';
```

</TabItem>
</Tabs>
