--- 
title: vw_federated_identity_credentials
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_federated_identity_credentials
  - managed_identity
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

Creates, updates, deletes, gets or lists a <code>vw_federated_identity_credentials</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_federated_identity_credentials</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_identity.vw_federated_identity_credentials" /></td></tr>
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
JSON_EXTRACT(properties, '$.issuer') as "issuer",
JSON_EXTRACT(properties, '$.subject') as "subject",
JSON_EXTRACT(properties, '$.audiences') as "audiences",
subscriptionId,
resourceGroupName,
resourceName,
federatedIdentityCredentialResourceName
FROM azure.managed_identity.federated_identity_credentials
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.issuer') as "issuer",
json_extract_path_text(properties, '$.subject') as "subject",
json_extract_path_text(properties, '$.audiences') as "audiences",
subscriptionId,
resourceGroupName,
resourceName,
federatedIdentityCredentialResourceName
FROM azure.managed_identity.federated_identity_credentials
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
