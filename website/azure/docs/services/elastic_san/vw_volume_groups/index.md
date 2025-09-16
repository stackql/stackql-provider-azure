--- 
title: vw_volume_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volume_groups
  - elastic_san
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

Creates, updates, deletes, gets or lists a <code>vw_volume_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volume_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.elastic_san.vw_volume_groups" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.protocolType') as "protocol_type",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.encryptionProperties') as "encryption_properties",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.enforceDataIntegrityCheckForIscsi') as "enforce_data_integrity_check_for_iscsi",
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName
FROM azure.elastic_san.volume_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND elasticSanName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.protocolType') as "protocol_type",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.encryptionProperties') as "encryption_properties",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.enforceDataIntegrityCheckForIscsi') as "enforce_data_integrity_check_for_iscsi",
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName
FROM azure.elastic_san.volume_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND elasticSanName = 'replace-me';
```

</TabItem>
</Tabs>
