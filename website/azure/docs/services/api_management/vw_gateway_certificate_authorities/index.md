--- 
title: vw_gateway_certificate_authorities
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gateway_certificate_authorities
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_gateway_certificate_authorities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gateway_certificate_authorities</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_gateway_certificate_authorities" /></td></tr>
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
JSON_EXTRACT(properties, '$.isTrusted') as "is_trusted",
subscriptionId,
resourceGroupName,
serviceName,
gatewayId,
certificateId
FROM azure.api_management.gateway_certificate_authorities
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND gatewayId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isTrusted') as "is_trusted",
subscriptionId,
resourceGroupName,
serviceName,
gatewayId,
certificateId
FROM azure.api_management.gateway_certificate_authorities
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND gatewayId = 'replace-me';
```

</TabItem>
</Tabs>
