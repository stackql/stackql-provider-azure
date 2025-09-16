--- 
title: vw_active_directory_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_active_directory_connectors
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>vw_active_directory_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_active_directory_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_active_directory_connectors" /></td></tr>
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
JSON_EXTRACT(properties, '$.domainServiceAccountLoginInformation') as "domain_service_account_login_information",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.spec') as "spec",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
dataControllerName,
activeDirectoryConnectorName
FROM azure.azure_arc_data.active_directory_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataControllerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.domainServiceAccountLoginInformation') as "domain_service_account_login_information",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.spec') as "spec",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
dataControllerName,
activeDirectoryConnectorName
FROM azure.azure_arc_data.active_directory_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataControllerName = 'replace-me';
```

</TabItem>
</Tabs>
