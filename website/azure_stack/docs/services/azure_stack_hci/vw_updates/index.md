--- 
title: vw_updates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_updates
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_updates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_updates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_updates" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.installedDate') as "installed_date",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.prerequisites') as "prerequisites",
JSON_EXTRACT(properties, '$.componentVersions') as "component_versions",
JSON_EXTRACT(properties, '$.rebootRequired') as "reboot_required",
JSON_EXTRACT(properties, '$.healthState') as "health_state",
JSON_EXTRACT(properties, '$.healthCheckResult') as "health_check_result",
JSON_EXTRACT(properties, '$.healthCheckDate') as "health_check_date",
JSON_EXTRACT(properties, '$.packagePath') as "package_path",
JSON_EXTRACT(properties, '$.packageSizeInMb') as "package_size_in_mb",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.releaseLink') as "release_link",
JSON_EXTRACT(properties, '$.availabilityType') as "availability_type",
JSON_EXTRACT(properties, '$.packageType') as "package_type",
JSON_EXTRACT(properties, '$.additionalProperties') as "additional_properties",
JSON_EXTRACT(properties, '$.updateStateProperties') as "update_state_properties",
subscriptionId,
resourceGroupName,
clusterName,
updateName
FROM azure_stack.azure_stack_hci.updates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.installedDate') as "installed_date",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.prerequisites') as "prerequisites",
json_extract_path_text(properties, '$.componentVersions') as "component_versions",
json_extract_path_text(properties, '$.rebootRequired') as "reboot_required",
json_extract_path_text(properties, '$.healthState') as "health_state",
json_extract_path_text(properties, '$.healthCheckResult') as "health_check_result",
json_extract_path_text(properties, '$.healthCheckDate') as "health_check_date",
json_extract_path_text(properties, '$.packagePath') as "package_path",
json_extract_path_text(properties, '$.packageSizeInMb') as "package_size_in_mb",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.releaseLink') as "release_link",
json_extract_path_text(properties, '$.availabilityType') as "availability_type",
json_extract_path_text(properties, '$.packageType') as "package_type",
json_extract_path_text(properties, '$.additionalProperties') as "additional_properties",
json_extract_path_text(properties, '$.updateStateProperties') as "update_state_properties",
subscriptionId,
resourceGroupName,
clusterName,
updateName
FROM azure_stack.azure_stack_hci.updates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
