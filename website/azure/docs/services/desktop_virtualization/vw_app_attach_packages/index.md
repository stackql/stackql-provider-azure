--- 
title: vw_app_attach_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_app_attach_packages
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_app_attach_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_app_attach_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_app_attach_packages" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.image') as "image",
JSON_EXTRACT(properties, '$.hostPoolReferences') as "host_pool_references",
JSON_EXTRACT(properties, '$.keyVaultURL') as "key_vault_url",
JSON_EXTRACT(properties, '$.failHealthCheckOnStagingFailure') as "fail_health_check_on_staging_failure",
JSON_EXTRACT(properties, '$.packageOwnerName') as "package_owner_name",
JSON_EXTRACT(properties, '$.packageLookbackUrl') as "package_lookback_url",
JSON_EXTRACT(properties, '$.customData') as "custom_data",
subscriptionId,
resourceGroupName,
appAttachPackageName
FROM azure.desktop_virtualization.app_attach_packages
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.image') as "image",
json_extract_path_text(properties, '$.hostPoolReferences') as "host_pool_references",
json_extract_path_text(properties, '$.keyVaultURL') as "key_vault_url",
json_extract_path_text(properties, '$.failHealthCheckOnStagingFailure') as "fail_health_check_on_staging_failure",
json_extract_path_text(properties, '$.packageOwnerName') as "package_owner_name",
json_extract_path_text(properties, '$.packageLookbackUrl') as "package_lookback_url",
json_extract_path_text(properties, '$.customData') as "custom_data",
subscriptionId,
resourceGroupName,
appAttachPackageName
FROM azure.desktop_virtualization.app_attach_packages
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
