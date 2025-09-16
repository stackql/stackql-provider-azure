--- 
title: vw_network_functions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_functions
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>vw_network_functions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_functions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.vw_network_functions" /></td></tr>
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
etag as etag,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publisherName') as "publisher_name",
JSON_EXTRACT(properties, '$.publisherScope') as "publisher_scope",
JSON_EXTRACT(properties, '$.networkFunctionDefinitionGroupName') as "network_function_definition_group_name",
JSON_EXTRACT(properties, '$.networkFunctionDefinitionVersion') as "network_function_definition_version",
JSON_EXTRACT(properties, '$.networkFunctionDefinitionOfferingLocation') as "network_function_definition_offering_location",
JSON_EXTRACT(properties, '$.networkFunctionDefinitionVersionResourceReference') as "network_function_definition_version_resource_reference",
JSON_EXTRACT(properties, '$.nfviType') as "nfvi_type",
JSON_EXTRACT(properties, '$.nfviId') as "nfvi_id",
JSON_EXTRACT(properties, '$.allowSoftwareUpdate') as "allow_software_update",
JSON_EXTRACT(properties, '$.configurationType') as "configuration_type",
JSON_EXTRACT(properties, '$.roleOverrideValues') as "role_override_values",
subscriptionId,
resourceGroupName,
networkFunctionName
FROM azure.hybrid_network.network_functions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publisherName') as "publisher_name",
json_extract_path_text(properties, '$.publisherScope') as "publisher_scope",
json_extract_path_text(properties, '$.networkFunctionDefinitionGroupName') as "network_function_definition_group_name",
json_extract_path_text(properties, '$.networkFunctionDefinitionVersion') as "network_function_definition_version",
json_extract_path_text(properties, '$.networkFunctionDefinitionOfferingLocation') as "network_function_definition_offering_location",
json_extract_path_text(properties, '$.networkFunctionDefinitionVersionResourceReference') as "network_function_definition_version_resource_reference",
json_extract_path_text(properties, '$.nfviType') as "nfvi_type",
json_extract_path_text(properties, '$.nfviId') as "nfvi_id",
json_extract_path_text(properties, '$.allowSoftwareUpdate') as "allow_software_update",
json_extract_path_text(properties, '$.configurationType') as "configuration_type",
json_extract_path_text(properties, '$.roleOverrideValues') as "role_override_values",
subscriptionId,
resourceGroupName,
networkFunctionName
FROM azure.hybrid_network.network_functions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
