--- 
title: vw_application_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_resources
  - integration_environment
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

Creates, updates, deletes, gets or lists a <code>vw_application_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.integration_environment.vw_application_resources" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.resourceKind') as "resource_kind",
subscriptionId,
resourceGroupName,
spaceName,
applicationName,
resourceName
FROM azure.integration_environment.application_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND spaceName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.resourceKind') as "resource_kind",
subscriptionId,
resourceGroupName,
spaceName,
applicationName,
resourceName
FROM azure.integration_environment.application_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND spaceName = 'replace-me' AND applicationName = 'replace-me';
```

</TabItem>
</Tabs>
