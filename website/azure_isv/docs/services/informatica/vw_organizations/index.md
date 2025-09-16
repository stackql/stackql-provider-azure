--- 
title: vw_organizations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_organizations
  - informatica
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.informatica.vw_organizations" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.informaticaProperties') as "informatica_properties",
JSON_EXTRACT(properties, '$.marketplaceDetails') as "marketplace_details",
JSON_EXTRACT(properties, '$.userDetails') as "user_details",
JSON_EXTRACT(properties, '$.companyDetails') as "company_details",
JSON_EXTRACT(properties, '$.linkOrganization') as "link_organization",
subscriptionId,
resourceGroupName,
organizationName
FROM azure_isv.informatica.organizations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.informaticaProperties') as "informatica_properties",
json_extract_path_text(properties, '$.marketplaceDetails') as "marketplace_details",
json_extract_path_text(properties, '$.userDetails') as "user_details",
json_extract_path_text(properties, '$.companyDetails') as "company_details",
json_extract_path_text(properties, '$.linkOrganization') as "link_organization",
subscriptionId,
resourceGroupName,
organizationName
FROM azure_isv.informatica.organizations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
