--- 
title: vw_factories
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_factories
  - data_factory
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

Creates, updates, deletes, gets or lists a <code>vw_factories</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_factories</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_factories" /></td></tr>
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
location as location,
type as type,
tags as tags,
eTag as e_tag,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.createTime') as "create_time",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.purviewConfiguration') as "purview_configuration",
JSON_EXTRACT(properties, '$.repoConfiguration') as "repo_configuration",
JSON_EXTRACT(properties, '$.globalParameters') as "global_parameters",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
factoryName
FROM azure.data_factory.factories
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
eTag as e_tag,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createTime') as "create_time",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.purviewConfiguration') as "purview_configuration",
json_extract_path_text(properties, '$.repoConfiguration') as "repo_configuration",
json_extract_path_text(properties, '$.globalParameters') as "global_parameters",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
factoryName
FROM azure.data_factory.factories
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
