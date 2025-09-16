--- 
title: vw_network_function_definition_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_function_definition_versions
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>vw_network_function_definition_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_function_definition_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.vw_network_function_definition_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.versionState') as "version_state",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.deployParameters') as "deploy_parameters",
JSON_EXTRACT(properties, '$.networkFunctionType') as "network_function_type",
subscriptionId,
resourceGroupName,
publisherName,
networkFunctionDefinitionGroupName,
networkFunctionDefinitionVersionName
FROM azure.hybrid_network.network_function_definition_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND publisherName = 'replace-me' AND networkFunctionDefinitionGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.versionState') as "version_state",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.deployParameters') as "deploy_parameters",
json_extract_path_text(properties, '$.networkFunctionType') as "network_function_type",
subscriptionId,
resourceGroupName,
publisherName,
networkFunctionDefinitionGroupName,
networkFunctionDefinitionVersionName
FROM azure.hybrid_network.network_function_definition_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND publisherName = 'replace-me' AND networkFunctionDefinitionGroupName = 'replace-me';
```

</TabItem>
</Tabs>
