--- 
title: vw_brokers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_brokers
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

Creates, updates, deletes, gets or lists a <code>vw_brokers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_brokers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.vw_brokers" /></td></tr>
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
JSON_EXTRACT(properties, '$.authImage') as "auth_image",
JSON_EXTRACT(properties, '$.brokerImage') as "broker_image",
JSON_EXTRACT(properties, '$.brokerNodeTolerations') as "broker_node_tolerations",
JSON_EXTRACT(properties, '$.cardinality') as "cardinality",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
JSON_EXTRACT(properties, '$.diskBackedMessageBufferSettings') as "disk_backed_message_buffer_settings",
JSON_EXTRACT(properties, '$.encryptInternalTraffic') as "encrypt_internal_traffic",
JSON_EXTRACT(properties, '$.healthManagerImage') as "health_manager_image",
JSON_EXTRACT(properties, '$.healthManagerNodeTolerations') as "health_manager_node_tolerations",
JSON_EXTRACT(properties, '$.internalCerts') as "internal_certs",
JSON_EXTRACT(properties, '$.memoryProfile') as "memory_profile",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
brokerName
FROM azure.iot_mq.brokers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.authImage') as "auth_image",
json_extract_path_text(properties, '$.brokerImage') as "broker_image",
json_extract_path_text(properties, '$.brokerNodeTolerations') as "broker_node_tolerations",
json_extract_path_text(properties, '$.cardinality') as "cardinality",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
json_extract_path_text(properties, '$.diskBackedMessageBufferSettings') as "disk_backed_message_buffer_settings",
json_extract_path_text(properties, '$.encryptInternalTraffic') as "encrypt_internal_traffic",
json_extract_path_text(properties, '$.healthManagerImage') as "health_manager_image",
json_extract_path_text(properties, '$.healthManagerNodeTolerations') as "health_manager_node_tolerations",
json_extract_path_text(properties, '$.internalCerts') as "internal_certs",
json_extract_path_text(properties, '$.memoryProfile') as "memory_profile",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
brokerName
FROM azure.iot_mq.brokers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me';
```

</TabItem>
</Tabs>
