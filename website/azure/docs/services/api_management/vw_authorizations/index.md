--- 
title: vw_authorizations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_authorizations
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

Creates, updates, deletes, gets or lists a <code>vw_authorizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_authorizations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_authorizations" /></td></tr>
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
JSON_EXTRACT(properties, '$.authorizationType') as "authorization_type",
JSON_EXTRACT(properties, '$.oauth2grantType') as "oauth2grant_type",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
serviceName,
authorizationProviderId,
authorizationId
FROM azure.api_management.authorizations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND authorizationProviderId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.authorizationType') as "authorization_type",
json_extract_path_text(properties, '$.oauth2grantType') as "oauth2grant_type",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
serviceName,
authorizationProviderId,
authorizationId
FROM azure.api_management.authorizations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND authorizationProviderId = 'replace-me';
```

</TabItem>
</Tabs>
