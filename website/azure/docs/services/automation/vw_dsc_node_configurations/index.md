--- 
title: vw_dsc_node_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dsc_node_configurations
  - automation
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

Creates, updates, deletes, gets or lists a <code>vw_dsc_node_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dsc_node_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_dsc_node_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.configuration') as "configuration",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
JSON_EXTRACT(properties, '$.incrementNodeConfigurationBuild') as "increment_node_configuration_build",
subscriptionId,
resourceGroupName,
automationAccountName,
nodeConfigurationName
FROM azure.automation.dsc_node_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.configuration') as "configuration",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
json_extract_path_text(properties, '$.incrementNodeConfigurationBuild') as "increment_node_configuration_build",
subscriptionId,
resourceGroupName,
automationAccountName,
nodeConfigurationName
FROM azure.automation.dsc_node_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
