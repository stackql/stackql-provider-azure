--- 
title: vw_fhir_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_fhir_services
  - healthcare
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

Creates, updates, deletes, gets or lists a <code>vw_fhir_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_fhir_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.healthcare.vw_fhir_services" /></td></tr>
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
identity as identity,
kind as kind,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.acrConfiguration') as "acr_configuration",
JSON_EXTRACT(properties, '$.authenticationConfiguration') as "authentication_configuration",
JSON_EXTRACT(properties, '$.corsConfiguration') as "cors_configuration",
JSON_EXTRACT(properties, '$.exportConfiguration') as "export_configuration",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.eventState') as "event_state",
JSON_EXTRACT(properties, '$.resourceVersionPolicyConfiguration') as "resource_version_policy_configuration",
JSON_EXTRACT(properties, '$.importConfiguration') as "import_configuration",
JSON_EXTRACT(properties, '$.implementationGuidesConfiguration') as "implementation_guides_configuration",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
subscriptionId,
resourceGroupName,
workspaceName,
fhirServiceName
FROM azure_extras.healthcare.fhir_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
identity as identity,
kind as kind,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.acrConfiguration') as "acr_configuration",
json_extract_path_text(properties, '$.authenticationConfiguration') as "authentication_configuration",
json_extract_path_text(properties, '$.corsConfiguration') as "cors_configuration",
json_extract_path_text(properties, '$.exportConfiguration') as "export_configuration",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.eventState') as "event_state",
json_extract_path_text(properties, '$.resourceVersionPolicyConfiguration') as "resource_version_policy_configuration",
json_extract_path_text(properties, '$.importConfiguration') as "import_configuration",
json_extract_path_text(properties, '$.implementationGuidesConfiguration') as "implementation_guides_configuration",
json_extract_path_text(properties, '$.encryption') as "encryption",
subscriptionId,
resourceGroupName,
workspaceName,
fhirServiceName
FROM azure_extras.healthcare.fhir_services
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
