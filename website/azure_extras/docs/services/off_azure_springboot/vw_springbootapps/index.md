--- 
title: vw_springbootapps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_springbootapps
  - off_azure_springboot
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_springbootapps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_springbootapps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.off_azure_springboot.vw_springbootapps" /></td></tr>
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
JSON_EXTRACT(properties, '$.appName') as "app_name",
JSON_EXTRACT(properties, '$.artifactName') as "artifact_name",
JSON_EXTRACT(properties, '$.appPort') as "app_port",
JSON_EXTRACT(properties, '$.appType') as "app_type",
JSON_EXTRACT(properties, '$.applicationConfigurations') as "application_configurations",
JSON_EXTRACT(properties, '$.bindingPorts') as "binding_ports",
JSON_EXTRACT(properties, '$.buildJdkVersion') as "build_jdk_version",
JSON_EXTRACT(properties, '$.certificates') as "certificates",
JSON_EXTRACT(properties, '$.checksum') as "checksum",
JSON_EXTRACT(properties, '$.dependencies') as "dependencies",
JSON_EXTRACT(properties, '$.environments') as "environments",
JSON_EXTRACT(properties, '$.instanceCount') as "instance_count",
JSON_EXTRACT(properties, '$.jarFileLocation') as "jar_file_location",
JSON_EXTRACT(properties, '$.jvmMemoryInMB') as "jvm_memory_in_mb",
JSON_EXTRACT(properties, '$.jvmOptions') as "jvm_options",
JSON_EXTRACT(properties, '$.miscs') as "miscs",
JSON_EXTRACT(properties, '$.instances') as "instances",
JSON_EXTRACT(properties, '$.runtimeJdkVersion') as "runtime_jdk_version",
JSON_EXTRACT(properties, '$.servers') as "servers",
JSON_EXTRACT(properties, '$.machineArmIds') as "machine_arm_ids",
JSON_EXTRACT(properties, '$.springBootVersion') as "spring_boot_version",
JSON_EXTRACT(properties, '$.staticContentLocations') as "static_content_locations",
JSON_EXTRACT(properties, '$.connectionStrings') as "connection_strings",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.labels') as "labels",
subscriptionId,
resourceGroupName,
siteName,
springbootappsName
FROM azure_extras.off_azure_springboot.springbootapps
WHERE subscriptionId = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.appName') as "app_name",
json_extract_path_text(properties, '$.artifactName') as "artifact_name",
json_extract_path_text(properties, '$.appPort') as "app_port",
json_extract_path_text(properties, '$.appType') as "app_type",
json_extract_path_text(properties, '$.applicationConfigurations') as "application_configurations",
json_extract_path_text(properties, '$.bindingPorts') as "binding_ports",
json_extract_path_text(properties, '$.buildJdkVersion') as "build_jdk_version",
json_extract_path_text(properties, '$.certificates') as "certificates",
json_extract_path_text(properties, '$.checksum') as "checksum",
json_extract_path_text(properties, '$.dependencies') as "dependencies",
json_extract_path_text(properties, '$.environments') as "environments",
json_extract_path_text(properties, '$.instanceCount') as "instance_count",
json_extract_path_text(properties, '$.jarFileLocation') as "jar_file_location",
json_extract_path_text(properties, '$.jvmMemoryInMB') as "jvm_memory_in_mb",
json_extract_path_text(properties, '$.jvmOptions') as "jvm_options",
json_extract_path_text(properties, '$.miscs') as "miscs",
json_extract_path_text(properties, '$.instances') as "instances",
json_extract_path_text(properties, '$.runtimeJdkVersion') as "runtime_jdk_version",
json_extract_path_text(properties, '$.servers') as "servers",
json_extract_path_text(properties, '$.machineArmIds') as "machine_arm_ids",
json_extract_path_text(properties, '$.springBootVersion') as "spring_boot_version",
json_extract_path_text(properties, '$.staticContentLocations') as "static_content_locations",
json_extract_path_text(properties, '$.connectionStrings') as "connection_strings",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.labels') as "labels",
subscriptionId,
resourceGroupName,
siteName,
springbootappsName
FROM azure_extras.off_azure_springboot.springbootapps
WHERE subscriptionId = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
