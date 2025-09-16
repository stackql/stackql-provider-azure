--- 
title: vw_configuration_profiles_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configuration_profiles_versions
  - automanage
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

Creates, updates, deletes, gets or lists a <code>vw_configuration_profiles_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configuration_profiles_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.vw_configuration_profiles_versions" /></td></tr>
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
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.configuration') as "configuration",
subscriptionId,
resourceGroupName,
configurationProfileName,
versionName
FROM azure.automanage.configuration_profiles_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configurationProfileName = 'replace-me' AND versionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.configuration') as "configuration",
subscriptionId,
resourceGroupName,
configurationProfileName,
versionName
FROM azure.automanage.configuration_profiles_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configurationProfileName = 'replace-me' AND versionName = 'replace-me';
```

</TabItem>
</Tabs>
