--- 
title: vw_gateway_hostname_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gateway_hostname_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_gateway_hostname_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gateway_hostname_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_gateway_hostname_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.hostname') as "hostname",
JSON_EXTRACT(properties, '$.certificateId') as "certificate_id",
JSON_EXTRACT(properties, '$.negotiateClientCertificate') as "negotiate_client_certificate",
JSON_EXTRACT(properties, '$.tls10Enabled') as "tls10_enabled",
JSON_EXTRACT(properties, '$.tls11Enabled') as "tls11_enabled",
JSON_EXTRACT(properties, '$.http2Enabled') as "http2_enabled",
subscriptionId,
resourceGroupName,
serviceName,
gatewayId,
hcId
FROM azure.api_management.gateway_hostname_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND gatewayId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.hostname') as "hostname",
json_extract_path_text(properties, '$.certificateId') as "certificate_id",
json_extract_path_text(properties, '$.negotiateClientCertificate') as "negotiate_client_certificate",
json_extract_path_text(properties, '$.tls10Enabled') as "tls10_enabled",
json_extract_path_text(properties, '$.tls11Enabled') as "tls11_enabled",
json_extract_path_text(properties, '$.http2Enabled') as "http2_enabled",
subscriptionId,
resourceGroupName,
serviceName,
gatewayId,
hcId
FROM azure.api_management.gateway_hostname_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND gatewayId = 'replace-me';
```

</TabItem>
</Tabs>
