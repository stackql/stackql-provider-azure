--- 
title: vw_curation_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_curation_profiles
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_curation_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_curation_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_curation_profiles" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.resourcePolicies') as "resource_policies",
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
curationProfileName
FROM azure.dev_center.curation_profiles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.resourcePolicies') as "resource_policies",
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
curationProfileName
FROM azure.dev_center.curation_profiles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me';
```

</TabItem>
</Tabs>
