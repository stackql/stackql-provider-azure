--- 
title: vw_data_masking_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_masking_policies
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_data_masking_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_masking_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_data_masking_policies" /></td></tr>
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
kind as kind,
managedBy as managed_by,
JSON_EXTRACT(properties, '$.dataMaskingState') as "data_masking_state",
JSON_EXTRACT(properties, '$.exemptPrincipals') as "exempt_principals",
JSON_EXTRACT(properties, '$.applicationPrincipals') as "application_principals",
JSON_EXTRACT(properties, '$.maskingLevel') as "masking_level",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
dataMaskingPolicyName
FROM azure.synapse.data_masking_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND dataMaskingPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
managedBy as managed_by,
json_extract_path_text(properties, '$.dataMaskingState') as "data_masking_state",
json_extract_path_text(properties, '$.exemptPrincipals') as "exempt_principals",
json_extract_path_text(properties, '$.applicationPrincipals') as "application_principals",
json_extract_path_text(properties, '$.maskingLevel') as "masking_level",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
dataMaskingPolicyName
FROM azure.synapse.data_masking_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND dataMaskingPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
