--- 
title: vw_archives
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_archives
  - container_registry
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

Creates, updates, deletes, gets or lists a <code>vw_archives</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_archives</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_archives" /></td></tr>
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
JSON_EXTRACT(properties, '$.packageSource') as "package_source",
JSON_EXTRACT(properties, '$.publishedVersion') as "published_version",
JSON_EXTRACT(properties, '$.repositoryEndpointPrefix') as "repository_endpoint_prefix",
JSON_EXTRACT(properties, '$.repositoryEndpoint') as "repository_endpoint",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
registryName,
packageType,
archiveName
FROM azure.container_registry.archives
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me' AND packageType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.packageSource') as "package_source",
json_extract_path_text(properties, '$.publishedVersion') as "published_version",
json_extract_path_text(properties, '$.repositoryEndpointPrefix') as "repository_endpoint_prefix",
json_extract_path_text(properties, '$.repositoryEndpoint') as "repository_endpoint",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
registryName,
packageType,
archiveName
FROM azure.container_registry.archives
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me' AND packageType = 'replace-me';
```

</TabItem>
</Tabs>
