--- 
title: vw_network_security_perimeter_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_security_perimeter_configurations
  - storage
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

Creates, updates, deletes, gets or lists a <code>vw_network_security_perimeter_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_security_perimeter_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_network_security_perimeter_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.provisioningIssues') as "provisioning_issues",
JSON_EXTRACT(properties, '$.networkSecurityPerimeter') as "network_security_perimeter",
JSON_EXTRACT(properties, '$.resourceAssociation') as "resource_association",
JSON_EXTRACT(properties, '$.profile') as "profile",
subscriptionId,
resourceGroupName,
accountName,
networkSecurityPerimeterConfigurationName
FROM azure.storage.network_security_perimeter_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.provisioningIssues') as "provisioning_issues",
json_extract_path_text(properties, '$.networkSecurityPerimeter') as "network_security_perimeter",
json_extract_path_text(properties, '$.resourceAssociation') as "resource_association",
json_extract_path_text(properties, '$.profile') as "profile",
subscriptionId,
resourceGroupName,
accountName,
networkSecurityPerimeterConfigurationName
FROM azure.storage.network_security_perimeter_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
