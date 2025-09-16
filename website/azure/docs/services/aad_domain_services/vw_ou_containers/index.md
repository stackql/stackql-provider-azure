--- 
title: vw_ou_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_ou_containers
  - aad_domain_services
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

Creates, updates, deletes, gets or lists a <code>vw_ou_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_ou_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aad_domain_services.vw_ou_containers" /></td></tr>
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
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.domainName') as "domain_name",
JSON_EXTRACT(properties, '$.deploymentId') as "deployment_id",
JSON_EXTRACT(properties, '$.containerId') as "container_id",
JSON_EXTRACT(properties, '$.accounts') as "accounts",
JSON_EXTRACT(properties, '$.serviceStatus') as "service_status",
JSON_EXTRACT(properties, '$.distinguishedName') as "distinguished_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
domainServiceName,
ouContainerName
FROM azure.aad_domain_services.ou_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND domainServiceName = 'replace-me';
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
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.domainName') as "domain_name",
json_extract_path_text(properties, '$.deploymentId') as "deployment_id",
json_extract_path_text(properties, '$.containerId') as "container_id",
json_extract_path_text(properties, '$.accounts') as "accounts",
json_extract_path_text(properties, '$.serviceStatus') as "service_status",
json_extract_path_text(properties, '$.distinguishedName') as "distinguished_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
domainServiceName,
ouContainerName
FROM azure.aad_domain_services.ou_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND domainServiceName = 'replace-me';
```

</TabItem>
</Tabs>
