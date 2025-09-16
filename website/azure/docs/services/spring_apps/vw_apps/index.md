--- 
title: vw_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_apps
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_apps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_apps" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.public') as "public",
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.addonConfigs') as "addon_configs",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.httpsOnly') as "https_only",
JSON_EXTRACT(properties, '$.temporaryDisk') as "temporary_disk",
JSON_EXTRACT(properties, '$.persistentDisk') as "persistent_disk",
JSON_EXTRACT(properties, '$.customPersistentDisks') as "custom_persistent_disks",
JSON_EXTRACT(properties, '$.enableEndToEndTLS') as "enable_end_to_end_tls",
JSON_EXTRACT(properties, '$.loadedCertificates') as "loaded_certificates",
JSON_EXTRACT(properties, '$.vnetAddons') as "vnet_addons",
JSON_EXTRACT(properties, '$.ingressSettings') as "ingress_settings",
JSON_EXTRACT(properties, '$.secrets') as "secrets",
JSON_EXTRACT(properties, '$.workloadProfileName') as "workload_profile_name",
JSON_EXTRACT(properties, '$.testEndpointAuthState') as "test_endpoint_auth_state",
subscriptionId,
resourceGroupName,
serviceName,
appName
FROM azure.spring_apps.apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
json_extract_path_text(properties, '$.public') as "public",
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.addonConfigs') as "addon_configs",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.httpsOnly') as "https_only",
json_extract_path_text(properties, '$.temporaryDisk') as "temporary_disk",
json_extract_path_text(properties, '$.persistentDisk') as "persistent_disk",
json_extract_path_text(properties, '$.customPersistentDisks') as "custom_persistent_disks",
json_extract_path_text(properties, '$.enableEndToEndTLS') as "enable_end_to_end_tls",
json_extract_path_text(properties, '$.loadedCertificates') as "loaded_certificates",
json_extract_path_text(properties, '$.vnetAddons') as "vnet_addons",
json_extract_path_text(properties, '$.ingressSettings') as "ingress_settings",
json_extract_path_text(properties, '$.secrets') as "secrets",
json_extract_path_text(properties, '$.workloadProfileName') as "workload_profile_name",
json_extract_path_text(properties, '$.testEndpointAuthState') as "test_endpoint_auth_state",
subscriptionId,
resourceGroupName,
serviceName,
appName
FROM azure.spring_apps.apps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
