--- 
title: vw_users
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_users
  - lab_services
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

Creates, updates, deletes, gets or lists a <code>vw_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_users</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.vw_users" /></td></tr>
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
JSON_EXTRACT(properties, '$.additionalUsageQuota') as "additional_usage_quota",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceOperationError') as "resource_operation_error",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.email') as "email",
JSON_EXTRACT(properties, '$.registrationState') as "registration_state",
JSON_EXTRACT(properties, '$.invitationState') as "invitation_state",
JSON_EXTRACT(properties, '$.invitationSent') as "invitation_sent",
JSON_EXTRACT(properties, '$.totalUsage') as "total_usage",
subscriptionId,
resourceGroupName,
labName,
userName
FROM azure.lab_services.users
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.additionalUsageQuota') as "additional_usage_quota",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceOperationError') as "resource_operation_error",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.email') as "email",
json_extract_path_text(properties, '$.registrationState') as "registration_state",
json_extract_path_text(properties, '$.invitationState') as "invitation_state",
json_extract_path_text(properties, '$.invitationSent') as "invitation_sent",
json_extract_path_text(properties, '$.totalUsage') as "total_usage",
subscriptionId,
resourceGroupName,
labName,
userName
FROM azure.lab_services.users
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
