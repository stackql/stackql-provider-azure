--- 
title: vw_solutions_discoverabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_solutions_discoverabilities
  - ag_food_platform
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

Creates, updates, deletes, gets or lists a <code>vw_solutions_discoverabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_solutions_discoverabilities</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.vw_solutions_discoverabilities" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.partnerId') as "partner_id",
JSON_EXTRACT(properties, '$.partnerTenantId') as "partner_tenant_id",
JSON_EXTRACT(properties, '$.dataAccessScopes') as "data_access_scopes",
JSON_EXTRACT(properties, '$.marketplaceOfferDetails') as "marketplace_offer_details",
JSON_EXTRACT(properties, '$.openApiSpecsDictionary') as "open_api_specs_dictionary",
JSON_EXTRACT(properties, '$.accessFBApplicationId') as "access_fb_application_id",
JSON_EXTRACT(properties, '$.saaSApplicationId') as "saa_s_application_id",
JSON_EXTRACT(properties, '$.actionIds') as "action_ids",
JSON_EXTRACT(properties, '$.roleId') as "role_id",
JSON_EXTRACT(properties, '$.roleName') as "role_name",
JSON_EXTRACT(properties, '$.accessFBApplicationName') as "access_fb_application_name",
dataManagerForAgricultureSolutionId
FROM azure_extras.ag_food_platform.solutions_discoverabilities
WHERE dataManagerForAgricultureSolutionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.partnerId') as "partner_id",
json_extract_path_text(properties, '$.partnerTenantId') as "partner_tenant_id",
json_extract_path_text(properties, '$.dataAccessScopes') as "data_access_scopes",
json_extract_path_text(properties, '$.marketplaceOfferDetails') as "marketplace_offer_details",
json_extract_path_text(properties, '$.openApiSpecsDictionary') as "open_api_specs_dictionary",
json_extract_path_text(properties, '$.accessFBApplicationId') as "access_fb_application_id",
json_extract_path_text(properties, '$.saaSApplicationId') as "saa_s_application_id",
json_extract_path_text(properties, '$.actionIds') as "action_ids",
json_extract_path_text(properties, '$.roleId') as "role_id",
json_extract_path_text(properties, '$.roleName') as "role_name",
json_extract_path_text(properties, '$.accessFBApplicationName') as "access_fb_application_name",
dataManagerForAgricultureSolutionId
FROM azure_extras.ag_food_platform.solutions_discoverabilities
WHERE dataManagerForAgricultureSolutionId = 'replace-me';
```

</TabItem>
</Tabs>
