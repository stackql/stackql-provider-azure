--- 
title: vw_organizations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_organizations
  - astro
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_organizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_organizations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.astro.vw_organizations" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.marketplace') as "marketplace",
JSON_EXTRACT(properties, '$.user') as "user",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.partnerOrganizationProperties') as "partner_organization_properties",
subscriptionId,
resourceGroupName,
organizationName
FROM azure_isv.astro.organizations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.marketplace') as "marketplace",
json_extract_path_text(properties, '$.user') as "user",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.partnerOrganizationProperties') as "partner_organization_properties",
subscriptionId,
resourceGroupName,
organizationName
FROM azure_isv.astro.organizations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
