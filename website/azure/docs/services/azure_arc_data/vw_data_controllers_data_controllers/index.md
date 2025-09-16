--- 
title: vw_data_controllers_data_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_controllers_data_controllers
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

Creates, updates, deletes, gets or lists a <code>vw_data_controllers_data_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_controllers_data_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_data_controllers_data_controllers" /></td></tr>
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
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.infrastructure') as "infrastructure",
JSON_EXTRACT(properties, '$.onPremiseProperty') as "on_premise_property",
JSON_EXTRACT(properties, '$.k8sRaw') as "k8s_raw",
JSON_EXTRACT(properties, '$.uploadWatermark') as "upload_watermark",
JSON_EXTRACT(properties, '$.lastUploadedDate') as "last_uploaded_date",
JSON_EXTRACT(properties, '$.basicLoginInformation') as "basic_login_information",
JSON_EXTRACT(properties, '$.metricsDashboardCredential') as "metrics_dashboard_credential",
JSON_EXTRACT(properties, '$.logsDashboardCredential') as "logs_dashboard_credential",
JSON_EXTRACT(properties, '$.logAnalyticsWorkspaceConfig') as "log_analytics_workspace_config",
JSON_EXTRACT(properties, '$.uploadServicePrincipal') as "upload_service_principal",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.extensionId') as "extension_id",
subscriptionId,
resourceGroupName,
dataControllerName
FROM azure.azure_arc_data.data_controllers_data_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataControllerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
extendedLocation as extended_location,
json_extract_path_text(properties, '$.infrastructure') as "infrastructure",
json_extract_path_text(properties, '$.onPremiseProperty') as "on_premise_property",
json_extract_path_text(properties, '$.k8sRaw') as "k8s_raw",
json_extract_path_text(properties, '$.uploadWatermark') as "upload_watermark",
json_extract_path_text(properties, '$.lastUploadedDate') as "last_uploaded_date",
json_extract_path_text(properties, '$.basicLoginInformation') as "basic_login_information",
json_extract_path_text(properties, '$.metricsDashboardCredential') as "metrics_dashboard_credential",
json_extract_path_text(properties, '$.logsDashboardCredential') as "logs_dashboard_credential",
json_extract_path_text(properties, '$.logAnalyticsWorkspaceConfig') as "log_analytics_workspace_config",
json_extract_path_text(properties, '$.uploadServicePrincipal') as "upload_service_principal",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.extensionId') as "extension_id",
subscriptionId,
resourceGroupName,
dataControllerName
FROM azure.azure_arc_data.data_controllers_data_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataControllerName = 'replace-me';
```

</TabItem>
</Tabs>
