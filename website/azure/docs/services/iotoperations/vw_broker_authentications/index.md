--- 
title: vw_broker_authentications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_broker_authentications
  - iotoperations
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

Creates, updates, deletes, gets or lists a <code>vw_broker_authentications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_broker_authentications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iotoperations.vw_broker_authentications" /></td></tr>
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
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.authenticationMethods') as "authentication_methods",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
brokerName,
authenticationName
FROM azure.iotoperations.broker_authentications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND brokerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
extendedLocation as extended_location,
json_extract_path_text(properties, '$.authenticationMethods') as "authentication_methods",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
brokerName,
authenticationName
FROM azure.iotoperations.broker_authentications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND brokerName = 'replace-me';
```

</TabItem>
</Tabs>
