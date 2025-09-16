--- 
title: vw_adc_catalogs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_adc_catalogs
  - data_catalog
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

Creates, updates, deletes, gets or lists a <code>vw_adc_catalogs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_adc_catalogs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_catalog.vw_adc_catalogs" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.units') as "units",
JSON_EXTRACT(properties, '$.admins') as "admins",
JSON_EXTRACT(properties, '$.users') as "users",
JSON_EXTRACT(properties, '$.successfullyProvisioned') as "successfully_provisioned",
JSON_EXTRACT(properties, '$.enableAutomaticUnitAdjustment') as "enable_automatic_unit_adjustment",
subscriptionId,
resourceGroupName,
catalogName
FROM azure.data_catalog.adc_catalogs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me';
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
etag as etag,
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.units') as "units",
json_extract_path_text(properties, '$.admins') as "admins",
json_extract_path_text(properties, '$.users') as "users",
json_extract_path_text(properties, '$.successfullyProvisioned') as "successfully_provisioned",
json_extract_path_text(properties, '$.enableAutomaticUnitAdjustment') as "enable_automatic_unit_adjustment",
subscriptionId,
resourceGroupName,
catalogName
FROM azure.data_catalog.adc_catalogs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
</Tabs>
