--- 
title: vw_git_lab_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_git_lab_groups
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

Creates, updates, deletes, gets or lists a <code>vw_git_lab_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_git_lab_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_git_lab_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.fullyQualifiedName') as "fully_qualified_name",
JSON_EXTRACT(properties, '$.fullyQualifiedFriendlyName') as "fully_qualified_friendly_name",
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.onboardingState') as "onboarding_state",
subscriptionId,
resourceGroupName,
securityConnectorName,
groupFQName
FROM azure.security.git_lab_groups
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
json_extract_path_text(properties, '$.fullyQualifiedName') as "fully_qualified_name",
json_extract_path_text(properties, '$.fullyQualifiedFriendlyName') as "fully_qualified_friendly_name",
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.onboardingState') as "onboarding_state",
subscriptionId,
resourceGroupName,
securityConnectorName,
groupFQName
FROM azure.security.git_lab_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND securityConnectorName = 'replace-me';
```

</TabItem>
</Tabs>
