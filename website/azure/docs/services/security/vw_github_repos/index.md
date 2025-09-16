--- 
title: vw_github_repos
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_github_repos
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

Creates, updates, deletes, gets or lists a <code>vw_github_repos</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_github_repos</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_github_repos" /></td></tr>
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
JSON_EXTRACT(properties, '$.repoId') as "repo_id",
JSON_EXTRACT(properties, '$.repoName') as "repo_name",
JSON_EXTRACT(properties, '$.repoFullName') as "repo_full_name",
JSON_EXTRACT(properties, '$.onboardingState') as "onboarding_state",
JSON_EXTRACT(properties, '$.repoUrl') as "repo_url",
JSON_EXTRACT(properties, '$.parentOwnerName') as "parent_owner_name",
subscriptionId,
resourceGroupName,
securityConnectorName,
ownerName,
repoName
FROM azure.security.github_repos
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND securityConnectorName = 'replace-me' AND ownerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.provisioningStatusMessage') as "provisioning_status_message",
json_extract_path_text(properties, '$.provisioningStatusUpdateTimeUtc') as "provisioning_status_update_time_utc",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.repoId') as "repo_id",
json_extract_path_text(properties, '$.repoName') as "repo_name",
json_extract_path_text(properties, '$.repoFullName') as "repo_full_name",
json_extract_path_text(properties, '$.onboardingState') as "onboarding_state",
json_extract_path_text(properties, '$.repoUrl') as "repo_url",
json_extract_path_text(properties, '$.parentOwnerName') as "parent_owner_name",
subscriptionId,
resourceGroupName,
securityConnectorName,
ownerName,
repoName
FROM azure.security.github_repos
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND securityConnectorName = 'replace-me' AND ownerName = 'replace-me';
```

</TabItem>
</Tabs>
