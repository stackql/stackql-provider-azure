--- 
title: vw_apis
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_apis
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_apis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_apis</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_apis" /></td></tr>
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
JSON_EXTRACT(properties, '$.sourceApiId') as "source_api_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.serviceUrl') as "service_url",
JSON_EXTRACT(properties, '$.path') as "path",
JSON_EXTRACT(properties, '$.protocols') as "protocols",
JSON_EXTRACT(properties, '$.apiVersionSet') as "api_version_set",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.authenticationSettings') as "authentication_settings",
JSON_EXTRACT(properties, '$.subscriptionKeyParameterNames') as "subscription_key_parameter_names",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.apiRevision') as "api_revision",
JSON_EXTRACT(properties, '$.apiVersion') as "api_version",
JSON_EXTRACT(properties, '$.isCurrent') as "is_current",
JSON_EXTRACT(properties, '$.isOnline') as "is_online",
JSON_EXTRACT(properties, '$.apiRevisionDescription') as "api_revision_description",
JSON_EXTRACT(properties, '$.apiVersionDescription') as "api_version_description",
JSON_EXTRACT(properties, '$.apiVersionSetId') as "api_version_set_id",
JSON_EXTRACT(properties, '$.subscriptionRequired') as "subscription_required",
JSON_EXTRACT(properties, '$.termsOfServiceUrl') as "terms_of_service_url",
JSON_EXTRACT(properties, '$.contact') as "contact",
JSON_EXTRACT(properties, '$.license') as "license",
subscriptionId,
resourceGroupName,
serviceName,
apiId
FROM azure.api_management.apis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.sourceApiId') as "source_api_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.serviceUrl') as "service_url",
json_extract_path_text(properties, '$.path') as "path",
json_extract_path_text(properties, '$.protocols') as "protocols",
json_extract_path_text(properties, '$.apiVersionSet') as "api_version_set",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.authenticationSettings') as "authentication_settings",
json_extract_path_text(properties, '$.subscriptionKeyParameterNames') as "subscription_key_parameter_names",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.apiRevision') as "api_revision",
json_extract_path_text(properties, '$.apiVersion') as "api_version",
json_extract_path_text(properties, '$.isCurrent') as "is_current",
json_extract_path_text(properties, '$.isOnline') as "is_online",
json_extract_path_text(properties, '$.apiRevisionDescription') as "api_revision_description",
json_extract_path_text(properties, '$.apiVersionDescription') as "api_version_description",
json_extract_path_text(properties, '$.apiVersionSetId') as "api_version_set_id",
json_extract_path_text(properties, '$.subscriptionRequired') as "subscription_required",
json_extract_path_text(properties, '$.termsOfServiceUrl') as "terms_of_service_url",
json_extract_path_text(properties, '$.contact') as "contact",
json_extract_path_text(properties, '$.license') as "license",
subscriptionId,
resourceGroupName,
serviceName,
apiId
FROM azure.api_management.apis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
