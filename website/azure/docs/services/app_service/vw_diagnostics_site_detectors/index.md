--- 
title: vw_diagnostics_site_detectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_diagnostics_site_detectors
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_diagnostics_site_detectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_diagnostics_site_detectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_diagnostics_site_detectors" /></td></tr>
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
kind as kind,
type as type,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.rank') as "rank",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
subscriptionId,
resourceGroupName,
siteName,
diagnosticCategory,
detectorName
FROM azure.app_service.diagnostics_site_detectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND diagnosticCategory = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
kind as kind,
type as type,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.rank') as "rank",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
subscriptionId,
resourceGroupName,
siteName,
diagnosticCategory,
detectorName
FROM azure.app_service.diagnostics_site_detectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND diagnosticCategory = 'replace-me';
```

</TabItem>
</Tabs>
