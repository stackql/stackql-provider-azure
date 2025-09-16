--- 
title: vw_integration_account_assemblies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_integration_account_assemblies
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>vw_integration_account_assemblies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_integration_account_assemblies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_integration_account_assemblies" /></td></tr>
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
id as id,
name as name,
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.assemblyName') as "assembly_name",
JSON_EXTRACT(properties, '$.assemblyVersion') as "assembly_version",
JSON_EXTRACT(properties, '$.assemblyCulture') as "assembly_culture",
JSON_EXTRACT(properties, '$.assemblyPublicKeyToken') as "assembly_public_key_token",
JSON_EXTRACT(properties, '$.content') as "content",
JSON_EXTRACT(properties, '$.contentType') as "content_type",
JSON_EXTRACT(properties, '$.contentLink') as "content_link",
subscriptionId,
resourceGroupName,
integrationAccountName,
assemblyArtifactName
FROM azure.logic_apps.integration_account_assemblies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.assemblyName') as "assembly_name",
json_extract_path_text(properties, '$.assemblyVersion') as "assembly_version",
json_extract_path_text(properties, '$.assemblyCulture') as "assembly_culture",
json_extract_path_text(properties, '$.assemblyPublicKeyToken') as "assembly_public_key_token",
json_extract_path_text(properties, '$.content') as "content",
json_extract_path_text(properties, '$.contentType') as "content_type",
json_extract_path_text(properties, '$.contentLink') as "content_link",
subscriptionId,
resourceGroupName,
integrationAccountName,
assemblyArtifactName
FROM azure.logic_apps.integration_account_assemblies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
