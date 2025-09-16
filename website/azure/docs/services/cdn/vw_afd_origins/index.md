--- 
title: vw_afd_origins
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_afd_origins
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

Creates, updates, deletes, gets or lists a <code>vw_afd_origins</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_afd_origins</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_afd_origins" /></td></tr>
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
JSON_EXTRACT(properties, '$.originGroupName') as "origin_group_name",
JSON_EXTRACT(properties, '$.azureOrigin') as "azure_origin",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.httpPort') as "http_port",
JSON_EXTRACT(properties, '$.httpsPort') as "https_port",
JSON_EXTRACT(properties, '$.originHostHeader') as "origin_host_header",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.weight') as "weight",
JSON_EXTRACT(properties, '$.sharedPrivateLinkResource') as "shared_private_link_resource",
JSON_EXTRACT(properties, '$.enabledState') as "enabled_state",
JSON_EXTRACT(properties, '$.enforceCertificateNameCheck') as "enforce_certificate_name_check",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
originGroupName,
originName
FROM azure.cdn.afd_origins
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND originGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.originGroupName') as "origin_group_name",
json_extract_path_text(properties, '$.azureOrigin') as "azure_origin",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.httpPort') as "http_port",
json_extract_path_text(properties, '$.httpsPort') as "https_port",
json_extract_path_text(properties, '$.originHostHeader') as "origin_host_header",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.weight') as "weight",
json_extract_path_text(properties, '$.sharedPrivateLinkResource') as "shared_private_link_resource",
json_extract_path_text(properties, '$.enabledState') as "enabled_state",
json_extract_path_text(properties, '$.enforceCertificateNameCheck') as "enforce_certificate_name_check",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
originGroupName,
originName
FROM azure.cdn.afd_origins
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND originGroupName = 'replace-me';
```

</TabItem>
</Tabs>
