--- 
title: vw_clients
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clients
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>vw_clients</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clients</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_clients" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.authenticationName') as "authentication_name",
JSON_EXTRACT(properties, '$.clientCertificateAuthentication') as "client_certificate_authentication",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.attributes') as "attributes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
namespaceName,
clientName
FROM azure.event_grid.clients
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.authenticationName') as "authentication_name",
json_extract_path_text(properties, '$.clientCertificateAuthentication') as "client_certificate_authentication",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.attributes') as "attributes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
namespaceName,
clientName
FROM azure.event_grid.clients
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
</Tabs>
