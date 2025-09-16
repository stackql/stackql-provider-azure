--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - windows_iot
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.windows_iot.vw_services" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.notes') as "notes",
JSON_EXTRACT(properties, '$.startDate') as "start_date",
JSON_EXTRACT(properties, '$.quantity') as "quantity",
JSON_EXTRACT(properties, '$.billingDomainName') as "billing_domain_name",
JSON_EXTRACT(properties, '$.adminDomainName') as "admin_domain_name",
subscriptionId,
resourceGroupName,
deviceName
FROM azure_extras.windows_iot.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.notes') as "notes",
json_extract_path_text(properties, '$.startDate') as "start_date",
json_extract_path_text(properties, '$.quantity') as "quantity",
json_extract_path_text(properties, '$.billingDomainName') as "billing_domain_name",
json_extract_path_text(properties, '$.adminDomainName') as "admin_domain_name",
subscriptionId,
resourceGroupName,
deviceName
FROM azure_extras.windows_iot.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
