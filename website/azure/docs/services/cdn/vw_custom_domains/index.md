--- 
title: vw_custom_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_domains
  - cdn
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

Creates, updates, deletes, gets or lists a <code>vw_custom_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_domains</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_custom_domains" /></td></tr>
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
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.customHttpsProvisioningState') as "custom_https_provisioning_state",
JSON_EXTRACT(properties, '$.customHttpsProvisioningSubstate') as "custom_https_provisioning_substate",
JSON_EXTRACT(properties, '$.customHttpsParameters') as "custom_https_parameters",
JSON_EXTRACT(properties, '$.validationData') as "validation_data",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
customDomainName
FROM azure.cdn.custom_domains
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.customHttpsProvisioningState') as "custom_https_provisioning_state",
json_extract_path_text(properties, '$.customHttpsProvisioningSubstate') as "custom_https_provisioning_substate",
json_extract_path_text(properties, '$.customHttpsParameters') as "custom_https_parameters",
json_extract_path_text(properties, '$.validationData') as "validation_data",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
customDomainName
FROM azure.cdn.custom_domains
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
