--- 
title: vw_applications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_applications
  - hdinsight
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

Creates, updates, deletes, gets or lists a <code>vw_applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_applications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hdinsight.vw_applications" /></td></tr>
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
etag as etag,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.computeProfile') as "compute_profile",
JSON_EXTRACT(properties, '$.installScriptActions') as "install_script_actions",
JSON_EXTRACT(properties, '$.uninstallScriptActions') as "uninstall_script_actions",
JSON_EXTRACT(properties, '$.httpsEndpoints') as "https_endpoints",
JSON_EXTRACT(properties, '$.sshEndpoints') as "ssh_endpoints",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.applicationType') as "application_type",
JSON_EXTRACT(properties, '$.applicationState') as "application_state",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.marketplaceIdentifier') as "marketplace_identifier",
JSON_EXTRACT(properties, '$.privateLinkConfigurations') as "private_link_configurations",
subscriptionId,
resourceGroupName,
clusterName,
applicationName
FROM azure.hdinsight.applications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.computeProfile') as "compute_profile",
json_extract_path_text(properties, '$.installScriptActions') as "install_script_actions",
json_extract_path_text(properties, '$.uninstallScriptActions') as "uninstall_script_actions",
json_extract_path_text(properties, '$.httpsEndpoints') as "https_endpoints",
json_extract_path_text(properties, '$.sshEndpoints') as "ssh_endpoints",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.applicationType') as "application_type",
json_extract_path_text(properties, '$.applicationState') as "application_state",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.marketplaceIdentifier') as "marketplace_identifier",
json_extract_path_text(properties, '$.privateLinkConfigurations') as "private_link_configurations",
subscriptionId,
resourceGroupName,
clusterName,
applicationName
FROM azure.hdinsight.applications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
