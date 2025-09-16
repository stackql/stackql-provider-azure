--- 
title: vw_dev_tool_portals
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dev_tool_portals
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_dev_tool_portals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dev_tool_portals</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_dev_tool_portals" /></td></tr>
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
JSON_EXTRACT(properties, '$.components') as "components",
JSON_EXTRACT(properties, '$.public') as "public",
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.ssoProperties') as "sso_properties",
JSON_EXTRACT(properties, '$.features') as "features",
subscriptionId,
resourceGroupName,
serviceName,
devToolPortalName
FROM azure.spring_apps.dev_tool_portals
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.components') as "components",
json_extract_path_text(properties, '$.public') as "public",
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.ssoProperties') as "sso_properties",
json_extract_path_text(properties, '$.features') as "features",
subscriptionId,
resourceGroupName,
serviceName,
devToolPortalName
FROM azure.spring_apps.dev_tool_portals
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
