--- 
title: vw_authorizations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_authorizations
  - vmware
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_authorizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_authorizations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware.vw_authorizations" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.expressRouteAuthorizationId') as "express_route_authorization_id",
JSON_EXTRACT(properties, '$.expressRouteAuthorizationKey') as "express_route_authorization_key",
subscriptionId,
resourceGroupName,
privateCloudName,
authorizationName
FROM azure_isv.vmware.authorizations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateCloudName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.expressRouteAuthorizationId') as "express_route_authorization_id",
json_extract_path_text(properties, '$.expressRouteAuthorizationKey') as "express_route_authorization_key",
subscriptionId,
resourceGroupName,
privateCloudName,
authorizationName
FROM azure_isv.vmware.authorizations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateCloudName = 'replace-me';
```

</TabItem>
</Tabs>
