--- 
title: vw_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_providers
  - attestation
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

Creates, updates, deletes, gets or lists a <code>vw_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_providers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.attestation.vw_providers" /></td></tr>
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
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.trustModel') as "trust_model",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.attestUri') as "attest_uri",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.tpmAttestationAuthentication') as "tpm_attestation_authentication",
subscriptionId,
resourceGroupName,
providerName
FROM azure.attestation.providers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.trustModel') as "trust_model",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.attestUri') as "attest_uri",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.tpmAttestationAuthentication') as "tpm_attestation_authentication",
subscriptionId,
resourceGroupName,
providerName
FROM azure.attestation.providers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
