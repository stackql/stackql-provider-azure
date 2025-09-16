--- 
title: vw_ledgers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_ledgers
  - confidential_ledger
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

Creates, updates, deletes, gets or lists a <code>vw_ledgers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_ledgers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.confidential_ledger.vw_ledgers" /></td></tr>
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
JSON_EXTRACT(properties, '$.ledgerName') as "ledger_name",
JSON_EXTRACT(properties, '$.ledgerUri') as "ledger_uri",
JSON_EXTRACT(properties, '$.identityServiceUri') as "identity_service_uri",
JSON_EXTRACT(properties, '$.ledgerInternalNamespace') as "ledger_internal_namespace",
JSON_EXTRACT(properties, '$.runningState') as "running_state",
JSON_EXTRACT(properties, '$.ledgerType') as "ledger_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.ledgerSku') as "ledger_sku",
JSON_EXTRACT(properties, '$.aadBasedSecurityPrincipals') as "aad_based_security_principals",
JSON_EXTRACT(properties, '$.certBasedSecurityPrincipals') as "cert_based_security_principals",
JSON_EXTRACT(properties, '$.hostLevel') as "host_level",
JSON_EXTRACT(properties, '$.maxBodySizeInMb') as "max_body_size_in_mb",
JSON_EXTRACT(properties, '$.subjectName') as "subject_name",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
JSON_EXTRACT(properties, '$.writeLBAddressPrefix') as "write_lb_address_prefix",
JSON_EXTRACT(properties, '$.workerThreads') as "worker_threads",
subscriptionId,
resourceGroupName,
ledgerName
FROM azure.confidential_ledger.ledgers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.ledgerName') as "ledger_name",
json_extract_path_text(properties, '$.ledgerUri') as "ledger_uri",
json_extract_path_text(properties, '$.identityServiceUri') as "identity_service_uri",
json_extract_path_text(properties, '$.ledgerInternalNamespace') as "ledger_internal_namespace",
json_extract_path_text(properties, '$.runningState') as "running_state",
json_extract_path_text(properties, '$.ledgerType') as "ledger_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.ledgerSku') as "ledger_sku",
json_extract_path_text(properties, '$.aadBasedSecurityPrincipals') as "aad_based_security_principals",
json_extract_path_text(properties, '$.certBasedSecurityPrincipals') as "cert_based_security_principals",
json_extract_path_text(properties, '$.hostLevel') as "host_level",
json_extract_path_text(properties, '$.maxBodySizeInMb') as "max_body_size_in_mb",
json_extract_path_text(properties, '$.subjectName') as "subject_name",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
json_extract_path_text(properties, '$.writeLBAddressPrefix') as "write_lb_address_prefix",
json_extract_path_text(properties, '$.workerThreads') as "worker_threads",
subscriptionId,
resourceGroupName,
ledgerName
FROM azure.confidential_ledger.ledgers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
