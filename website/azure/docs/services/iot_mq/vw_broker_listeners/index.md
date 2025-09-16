--- 
title: vw_broker_listeners
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_broker_listeners
  - iot_mq
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

Creates, updates, deletes, gets or lists a <code>vw_broker_listeners</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_broker_listeners</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.vw_broker_listeners" /></td></tr>
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
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.authenticationEnabled') as "authentication_enabled",
JSON_EXTRACT(properties, '$.authorizationEnabled') as "authorization_enabled",
JSON_EXTRACT(properties, '$.brokerRef') as "broker_ref",
JSON_EXTRACT(properties, '$.nodePort') as "node_port",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.serviceName') as "service_name",
JSON_EXTRACT(properties, '$.serviceType') as "service_type",
JSON_EXTRACT(properties, '$.tls') as "tls",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
brokerName,
listenerName
FROM azure.iot_mq.broker_listeners
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me' AND brokerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.authenticationEnabled') as "authentication_enabled",
json_extract_path_text(properties, '$.authorizationEnabled') as "authorization_enabled",
json_extract_path_text(properties, '$.brokerRef') as "broker_ref",
json_extract_path_text(properties, '$.nodePort') as "node_port",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.serviceName') as "service_name",
json_extract_path_text(properties, '$.serviceType') as "service_type",
json_extract_path_text(properties, '$.tls') as "tls",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
brokerName,
listenerName
FROM azure.iot_mq.broker_listeners
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me' AND brokerName = 'replace-me';
```

</TabItem>
</Tabs>
