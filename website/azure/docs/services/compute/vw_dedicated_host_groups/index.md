--- 
title: vw_dedicated_host_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dedicated_host_groups
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_dedicated_host_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dedicated_host_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_dedicated_host_groups" /></td></tr>
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
zones as zones,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.platformFaultDomainCount') as "platform_fault_domain_count",
JSON_EXTRACT(properties, '$.hosts') as "hosts",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.supportAutomaticPlacement') as "support_automatic_placement",
JSON_EXTRACT(properties, '$.additionalCapabilities') as "additional_capabilities",
subscriptionId,
resourceGroupName,
hostGroupName
FROM azure.compute.dedicated_host_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
zones as zones,
type as type,
tags as tags,
json_extract_path_text(properties, '$.platformFaultDomainCount') as "platform_fault_domain_count",
json_extract_path_text(properties, '$.hosts') as "hosts",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.supportAutomaticPlacement') as "support_automatic_placement",
json_extract_path_text(properties, '$.additionalCapabilities') as "additional_capabilities",
subscriptionId,
resourceGroupName,
hostGroupName
FROM azure.compute.dedicated_host_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
