--- 
title: vw_appliances_upgrade_graphs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_appliances_upgrade_graphs
  - resource_connector
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

Creates, updates, deletes, gets or lists a <code>vw_appliances_upgrade_graphs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_appliances_upgrade_graphs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_connector.vw_appliances_upgrade_graphs" /></td></tr>
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
JSON_EXTRACT(properties, '$.applianceVersion') as "appliance_version",
JSON_EXTRACT(properties, '$.supportedVersions') as "supported_versions",
subscriptionId,
resourceGroupName,
resourceName,
upgradeGraph
FROM azure.resource_connector.appliances_upgrade_graphs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND upgradeGraph = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
json_extract_path_text(properties, '$.applianceVersion') as "appliance_version",
json_extract_path_text(properties, '$.supportedVersions') as "supported_versions",
subscriptionId,
resourceGroupName,
resourceName,
upgradeGraph
FROM azure.resource_connector.appliances_upgrade_graphs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND upgradeGraph = 'replace-me';
```

</TabItem>
</Tabs>
